; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_rdrand_seed.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/prng/extr_prng_random.c_rdrand_seed.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ccdigest_info = type { i32 }

@CCSHA256_OUTPUT_SIZE = common dso_local global i32 0, align 4
@ccsha256_ltc_di = common dso_local global %struct.ccdigest_info zeroinitializer, align 4
@ctx = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (i8*, i64)* @rdrand_seed to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @rdrand_seed(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.ccdigest_info*, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %10 = load i32, i32* @CCSHA256_OUTPUT_SIZE, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %7, align 8
  %13 = alloca i32, i64 %11, align 16
  store i64 %11, i64* %8, align 8
  store %struct.ccdigest_info* @ccsha256_ltc_di, %struct.ccdigest_info** %9, align 8
  %14 = load %struct.ccdigest_info*, %struct.ccdigest_info** %9, align 8
  %15 = load i32, i32* @ctx, align 4
  %16 = call i32 @ccdigest_di_decl(%struct.ccdigest_info* %14, i32 %15)
  %17 = load %struct.ccdigest_info*, %struct.ccdigest_info** %9, align 8
  %18 = load i32, i32* @ctx, align 4
  %19 = call i32 @ccdigest_init(%struct.ccdigest_info* %17, i32 %18)
  store i64 0, i64* %5, align 8
  br label %20

20:                                               ; preds = %31, %2
  %21 = load i64, i64* %5, align 8
  %22 = icmp ult i64 %21, 1023
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = call i32 @rdrand_retry(i32* %6, i32 10)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %23
  store i64 0, i64* %4, align 8
  br label %46

27:                                               ; preds = %23
  %28 = load %struct.ccdigest_info*, %struct.ccdigest_info** %9, align 8
  %29 = load i32, i32* @ctx, align 4
  %30 = call i32 @ccdigest_update(%struct.ccdigest_info* %28, i32 %29, i32 4, i32* %6)
  br label %31

31:                                               ; preds = %27
  %32 = load i64, i64* %5, align 8
  %33 = add i64 %32, 1
  store i64 %33, i64* %5, align 8
  br label %20

34:                                               ; preds = %20
  %35 = load %struct.ccdigest_info*, %struct.ccdigest_info** %9, align 8
  %36 = load i32, i32* @ctx, align 4
  %37 = call i32 @ccdigest_final(%struct.ccdigest_info* %35, i32 %36, i32* %13)
  %38 = load i64, i64* %4, align 8
  %39 = icmp ugt i64 %38, 2
  br i1 %39, label %40, label %41

40:                                               ; preds = %34
  store i64 2, i64* %4, align 8
  br label %41

41:                                               ; preds = %40, %34
  %42 = load i8*, i8** %3, align 8
  %43 = load i64, i64* %4, align 8
  %44 = mul i64 %43, 4
  %45 = call i32 @memcpy(i8* %42, i32* %13, i64 %44)
  br label %46

46:                                               ; preds = %41, %26
  %47 = load %struct.ccdigest_info*, %struct.ccdigest_info** %9, align 8
  %48 = load i32, i32* @ctx, align 4
  %49 = call i32 @ccdigest_di_clear(%struct.ccdigest_info* %47, i32 %48)
  %50 = mul nuw i64 4, %11
  %51 = trunc i64 %50 to i32
  %52 = call i32 @bzero(i32* %13, i32 %51)
  %53 = call i32 @bzero(i32* %6, i32 4)
  %54 = load i64, i64* %4, align 8
  %55 = load i8*, i8** %7, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i64 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @ccdigest_di_decl(%struct.ccdigest_info*, i32) #2

declare dso_local i32 @ccdigest_init(%struct.ccdigest_info*, i32) #2

declare dso_local i32 @rdrand_retry(i32*, i32) #2

declare dso_local i32 @ccdigest_update(%struct.ccdigest_info*, i32, i32, i32*) #2

declare dso_local i32 @ccdigest_final(%struct.ccdigest_info*, i32, i32*) #2

declare dso_local i32 @memcpy(i8*, i32*, i64) #2

declare dso_local i32 @ccdigest_di_clear(%struct.ccdigest_info*, i32) #2

declare dso_local i32 @bzero(i32*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
