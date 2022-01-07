; ModuleID = '/home/carl/AnghaBench/RetroArch/griffin/extr_..verbosity.c_RARCH_LOG_BUFFER.c'
source_filename = "/home/carl/AnghaBench/RetroArch/griffin/extr_..verbosity.c_RARCH_LOG_BUFFER.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@verbosity_log_level = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"== %d-byte buffer ==================\0A\00", align 1
@.str.1 = private unnamed_addr constant [68 x i8] c"%02x%02x%02x%02x%02x%02x%02x%02x  %02x%02x%02x%02x%02x%02x%02x%02x\0A\00", align 1
@.str.2 = private unnamed_addr constant [36 x i8] c"==================================\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @RARCH_LOG_BUFFER(i32* %0, i64 %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [16 x i32], align 16
  store i32* %0, i32** %3, align 8
  store i64 %1, i64* %4, align 8
  %9 = load i64, i64* %4, align 8
  %10 = urem i64 %9, 16
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %7, align 4
  %12 = bitcast [16 x i32]* %8 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 16 %12, i8 0, i64 64, i1 false)
  %13 = load i32, i32* @verbosity_log_level, align 4
  %14 = icmp sgt i32 %13, 1
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %127

16:                                               ; preds = %2
  %17 = load i64, i64* %4, align 8
  %18 = trunc i64 %17 to i32
  %19 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %18)
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %73, %16
  %21 = load i32, i32* %5, align 4
  %22 = zext i32 %21 to i64
  %23 = load i64, i64* %4, align 8
  %24 = icmp ult i64 %22, %23
  br i1 %24, label %25, label %76

25:                                               ; preds = %20
  %26 = load i32*, i32** %3, align 8
  %27 = load i32, i32* %5, align 4
  %28 = zext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %26, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* %6, align 4
  %32 = zext i32 %31 to i64
  %33 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %32
  store i32 %30, i32* %33, align 4
  %34 = load i32, i32* %6, align 4
  %35 = add i32 %34, 1
  store i32 %35, i32* %6, align 4
  %36 = load i32, i32* %6, align 4
  %37 = icmp eq i32 %36, 16
  br i1 %37, label %38, label %72

38:                                               ; preds = %25
  store i32 0, i32* %6, align 4
  %39 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %40 = load i32, i32* %39, align 16
  %41 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  %42 = load i32, i32* %41, align 4
  %43 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2
  %44 = load i32, i32* %43, align 8
  %45 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4
  %48 = load i32, i32* %47, align 16
  %49 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5
  %50 = load i32, i32* %49, align 4
  %51 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6
  %52 = load i32, i32* %51, align 8
  %53 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7
  %54 = load i32, i32* %53, align 4
  %55 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8
  %56 = load i32, i32* %55, align 16
  %57 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9
  %58 = load i32, i32* %57, align 4
  %59 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10
  %60 = load i32, i32* %59, align 8
  %61 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11
  %62 = load i32, i32* %61, align 4
  %63 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12
  %64 = load i32, i32* %63, align 16
  %65 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13
  %66 = load i32, i32* %65, align 4
  %67 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14
  %68 = load i32, i32* %67, align 8
  %69 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %40, i32 %42, i32 %44, i32 %46, i32 %48, i32 %50, i32 %52, i32 %54, i32 %56, i32 %58, i32 %60, i32 %62, i32 %64, i32 %66, i32 %68, i32 %70)
  br label %72

72:                                               ; preds = %38, %25
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %5, align 4
  %75 = add i32 %74, 1
  store i32 %75, i32* %5, align 4
  br label %20

76:                                               ; preds = %20
  %77 = load i32, i32* %7, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %125

79:                                               ; preds = %76
  %80 = load i32, i32* %7, align 4
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %88, %79
  %82 = load i32, i32* %5, align 4
  %83 = icmp ult i32 %82, 16
  br i1 %83, label %84, label %91

84:                                               ; preds = %81
  %85 = load i32, i32* %5, align 4
  %86 = zext i32 %85 to i64
  %87 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 %86
  store i32 255, i32* %87, align 4
  br label %88

88:                                               ; preds = %84
  %89 = load i32, i32* %5, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %5, align 4
  br label %81

91:                                               ; preds = %81
  %92 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 0
  %93 = load i32, i32* %92, align 16
  %94 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 1
  %95 = load i32, i32* %94, align 4
  %96 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 2
  %97 = load i32, i32* %96, align 8
  %98 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 3
  %99 = load i32, i32* %98, align 4
  %100 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 4
  %101 = load i32, i32* %100, align 16
  %102 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 5
  %103 = load i32, i32* %102, align 4
  %104 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 6
  %105 = load i32, i32* %104, align 8
  %106 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 7
  %107 = load i32, i32* %106, align 4
  %108 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 8
  %109 = load i32, i32* %108, align 16
  %110 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 9
  %111 = load i32, i32* %110, align 4
  %112 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 10
  %113 = load i32, i32* %112, align 8
  %114 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 11
  %115 = load i32, i32* %114, align 4
  %116 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 12
  %117 = load i32, i32* %116, align 16
  %118 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 13
  %119 = load i32, i32* %118, align 4
  %120 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 14
  %121 = load i32, i32* %120, align 8
  %122 = getelementptr inbounds [16 x i32], [16 x i32]* %8, i64 0, i64 15
  %123 = load i32, i32* %122, align 4
  %124 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([68 x i8], [68 x i8]* @.str.1, i64 0, i64 0), i32 %93, i32 %95, i32 %97, i32 %99, i32 %101, i32 %103, i32 %105, i32 %107, i32 %109, i32 %111, i32 %113, i32 %115, i32 %117, i32 %119, i32 %121, i32 %123)
  br label %125

125:                                              ; preds = %91, %76
  %126 = call i32 (i8*, ...) @RARCH_LOG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.2, i64 0, i64 0))
  br label %127

127:                                              ; preds = %125, %15
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @RARCH_LOG(i8*, ...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
