; ModuleID = '/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_test_stack_underflow.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/san/extr_kasan-test.c_test_stack_underflow.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kasan_test = type { i32 }

@STACK_ARRAY_SZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kasan_test*)* @test_stack_underflow to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_stack_underflow(%struct.kasan_test* %0) #0 {
  %2 = alloca %struct.kasan_test*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  store %struct.kasan_test* %0, %struct.kasan_test** %2, align 8
  %6 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %7 = call i32 @TEST_START(%struct.kasan_test* %6)
  %8 = load i32, i32* @STACK_ARRAY_SZ, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %4, align 8
  %11 = alloca i32, i64 %9, align 16
  store i64 %9, i64* %5, align 8
  %12 = load i32, i32* @STACK_ARRAY_SZ, align 4
  %13 = call i32 @__nosan_memset(i32* %11, i32 0, i32 %12)
  %14 = call i64 asm sideeffect "movq $$-1, $0", "=r,~{memory},~{dirflag},~{fpsr},~{flags}"() #2, !srcloc !2
  store i64 %14, i64* %3, align 8
  %15 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %16 = call i32 @TEST_FAULT(%struct.kasan_test* %15)
  %17 = load i64, i64* %3, align 8
  %18 = getelementptr inbounds i32, i32* %11, i64 %17
  store i32 189, i32* %18, align 4
  %19 = load %struct.kasan_test*, %struct.kasan_test** %2, align 8
  %20 = call i32 @TEST_NOFAULT(%struct.kasan_test* %19)
  %21 = call i32 (...) @TEST_BARRIER()
  %22 = getelementptr inbounds i32, i32* %11, i64 0
  %23 = load i32, i32* %22, align 16
  %24 = icmp eq i32 %23, 0
  %25 = zext i1 %24 to i32
  %26 = load i8*, i8** %4, align 8
  call void @llvm.stackrestore(i8* %26)
  ret i32 %25
}

declare dso_local i32 @TEST_START(%struct.kasan_test*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @__nosan_memset(i32*, i32, i32) #1

declare dso_local i32 @TEST_FAULT(%struct.kasan_test*) #1

declare dso_local i32 @TEST_NOFAULT(%struct.kasan_test*) #1

declare dso_local i32 @TEST_BARRIER(...) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 599}
