; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/libs/debug_sym/extr_debug_sym.c_ReadVideoCoreStringBySymbol.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/libs/debug_sym/extr_debug_sym.c_ReadVideoCoreStringBySymbol.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [23 x i8] c"Symbol not found: '%s'\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"Unable to read %zu bytes @ 0x%08x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ReadVideoCoreStringBySymbol(i32 %0, i8* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store i32 %0, i32* %6, align 4
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load i8*, i8** %7, align 8
  %14 = call i32 @LookupVideoCoreSymbol(i32 %12, i8* %13, i32* %10, i64* %11)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %19, label %16

16:                                               ; preds = %4
  %17 = load i8*, i8** %7, align 8
  %18 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i8* %17)
  store i32 0, i32* %5, align 4
  br label %41

19:                                               ; preds = %4
  %20 = load i64, i64* %11, align 8
  %21 = load i64, i64* %9, align 8
  %22 = icmp ugt i64 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i64, i64* %9, align 8
  store i64 %24, i64* %11, align 8
  br label %25

25:                                               ; preds = %23, %19
  %26 = load i32, i32* %6, align 4
  %27 = load i8*, i8** %8, align 8
  %28 = load i32, i32* %10, align 4
  %29 = load i64, i64* %11, align 8
  %30 = call i32 @ReadVideoCoreMemory(i32 %26, i8* %27, i32 %28, i64 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %36, label %32

32:                                               ; preds = %25
  %33 = load i64, i64* %11, align 8
  %34 = load i32, i32* %10, align 4
  %35 = call i32 (i8*, ...) @ERR(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i64 %33, i32 %34)
  store i32 0, i32* %5, align 4
  br label %41

36:                                               ; preds = %25
  %37 = load i8*, i8** %8, align 8
  %38 = load i64, i64* %11, align 8
  %39 = sub i64 %38, 1
  %40 = getelementptr inbounds i8, i8* %37, i64 %39
  store i8 0, i8* %40, align 1
  store i32 1, i32* %5, align 4
  br label %41

41:                                               ; preds = %36, %32, %16
  %42 = load i32, i32* %5, align 4
  ret i32 %42
}

declare dso_local i32 @LookupVideoCoreSymbol(i32, i8*, i32*, i64*) #1

declare dso_local i32 @ERR(i8*, ...) #1

declare dso_local i32 @ReadVideoCoreMemory(i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
