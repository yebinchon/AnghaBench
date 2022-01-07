; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_RotateDisks.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_sio.c_SIO_RotateDisks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIO_MAX_DRIVES = common dso_local global i32 0, align 4
@FILENAME_MAX = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@SIO_filename = common dso_local global i32* null, align 8
@.str = private unnamed_addr constant [5 x i8] c"None\00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"Off\00", align 1
@.str.2 = private unnamed_addr constant [6 x i8] c"Empty\00", align 1
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @SIO_RotateDisks() #0 {
  %1 = alloca i8*, align 8
  %2 = alloca i64, align 8
  %3 = alloca i64, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = load i32, i32* @SIO_MAX_DRIVES, align 4
  %7 = zext i32 %6 to i64
  %8 = load i32, i32* @FILENAME_MAX, align 4
  %9 = zext i32 %8 to i64
  %10 = call i8* @llvm.stacksave()
  store i8* %10, i8** %1, align 8
  %11 = mul nuw i64 %7, %9
  %12 = alloca i8, i64 %11, align 16
  store i64 %7, i64* %2, align 8
  store i64 %9, i64* %3, align 8
  %13 = load i32, i32* @TRUE, align 4
  store i32 %13, i32* %5, align 4
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %32, %0
  %15 = load i32, i32* %4, align 4
  %16 = load i32, i32* @SIO_MAX_DRIVES, align 4
  %17 = icmp slt i32 %15, %16
  br i1 %17, label %18, label %35

18:                                               ; preds = %14
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = mul nsw i64 %20, %9
  %22 = getelementptr inbounds i8, i8* %12, i64 %21
  %23 = load i32*, i32** @SIO_filename, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds i32, i32* %23, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @strcpy(i8* %22, i32 %27)
  %29 = load i32, i32* %4, align 4
  %30 = add nsw i32 %29, 1
  %31 = call i32 @SIO_Dismount(i32 %30)
  br label %32

32:                                               ; preds = %18
  %33 = load i32, i32* %4, align 4
  %34 = add nsw i32 %33, 1
  store i32 %34, i32* %4, align 4
  br label %14

35:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %36

36:                                               ; preds = %74, %35
  %37 = load i32, i32* %4, align 4
  %38 = load i32, i32* @SIO_MAX_DRIVES, align 4
  %39 = icmp slt i32 %37, %38
  br i1 %39, label %40, label %77

40:                                               ; preds = %36
  %41 = load i32, i32* %4, align 4
  %42 = sext i32 %41 to i64
  %43 = mul nsw i64 %42, %9
  %44 = getelementptr inbounds i8, i8* %12, i64 %43
  %45 = call i64 @strcmp(i8* %44, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %73

47:                                               ; preds = %40
  %48 = load i32, i32* %4, align 4
  %49 = sext i32 %48 to i64
  %50 = mul nsw i64 %49, %9
  %51 = getelementptr inbounds i8, i8* %12, i64 %50
  %52 = call i64 @strcmp(i8* %51, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %73

54:                                               ; preds = %47
  %55 = load i32, i32* %4, align 4
  %56 = sext i32 %55 to i64
  %57 = mul nsw i64 %56, %9
  %58 = getelementptr inbounds i8, i8* %12, i64 %57
  %59 = call i64 @strcmp(i8* %58, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %54
  %62 = load i32, i32* %4, align 4
  %63 = load i32, i32* %4, align 4
  %64 = sext i32 %63 to i64
  %65 = mul nsw i64 %64, %9
  %66 = getelementptr inbounds i8, i8* %12, i64 %65
  %67 = load i32, i32* @FALSE, align 4
  %68 = call i32 @SIO_Mount(i32 %62, i8* %66, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %61
  %71 = load i32, i32* @FALSE, align 4
  store i32 %71, i32* %5, align 4
  br label %72

72:                                               ; preds = %70, %61
  br label %73

73:                                               ; preds = %72, %54, %47, %40
  br label %74

74:                                               ; preds = %73
  %75 = load i32, i32* %4, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %4, align 4
  br label %36

77:                                               ; preds = %36
  %78 = load i32, i32* @SIO_MAX_DRIVES, align 4
  %79 = sub nsw i32 %78, 1
  store i32 %79, i32* %4, align 4
  br label %80

80:                                               ; preds = %109, %77
  %81 = load i32, i32* %4, align 4
  %82 = icmp sgt i32 %81, -1
  br i1 %82, label %83, label %107

83:                                               ; preds = %80
  %84 = load i32, i32* %4, align 4
  %85 = sext i32 %84 to i64
  %86 = mul nsw i64 %85, %9
  %87 = getelementptr inbounds i8, i8* %12, i64 %86
  %88 = call i64 @strcmp(i8* %87, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %105

90:                                               ; preds = %83
  %91 = load i32, i32* %4, align 4
  %92 = sext i32 %91 to i64
  %93 = mul nsw i64 %92, %9
  %94 = getelementptr inbounds i8, i8* %12, i64 %93
  %95 = call i64 @strcmp(i8* %94, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %105

97:                                               ; preds = %90
  %98 = load i32, i32* %4, align 4
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, %9
  %101 = getelementptr inbounds i8, i8* %12, i64 %100
  %102 = call i64 @strcmp(i8* %101, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.2, i64 0, i64 0))
  %103 = icmp ne i64 %102, 0
  %104 = xor i1 %103, true
  br label %105

105:                                              ; preds = %97, %90, %83
  %106 = phi i1 [ true, %90 ], [ true, %83 ], [ %104, %97 ]
  br label %107

107:                                              ; preds = %105, %80
  %108 = phi i1 [ false, %80 ], [ %106, %105 ]
  br i1 %108, label %109, label %112

109:                                              ; preds = %107
  %110 = load i32, i32* %4, align 4
  %111 = add nsw i32 %110, -1
  store i32 %111, i32* %4, align 4
  br label %80

112:                                              ; preds = %107
  %113 = load i32, i32* %4, align 4
  %114 = icmp sgt i32 %113, -1
  br i1 %114, label %115, label %126

115:                                              ; preds = %112
  %116 = load i32, i32* %4, align 4
  %117 = add nsw i32 %116, 1
  %118 = mul nsw i64 0, %9
  %119 = getelementptr inbounds i8, i8* %12, i64 %118
  %120 = load i32, i32* @FALSE, align 4
  %121 = call i32 @SIO_Mount(i32 %117, i8* %119, i32 %120)
  %122 = icmp ne i32 %121, 0
  br i1 %122, label %125, label %123

123:                                              ; preds = %115
  %124 = load i32, i32* @FALSE, align 4
  store i32 %124, i32* %5, align 4
  br label %125

125:                                              ; preds = %123, %115
  br label %126

126:                                              ; preds = %125, %112
  %127 = load i32, i32* %5, align 4
  %128 = load i8*, i8** %1, align 8
  call void @llvm.stackrestore(i8* %128)
  ret i32 %127
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @strcpy(i8*, i32) #2

declare dso_local i32 @SIO_Dismount(i32) #2

declare dso_local i64 @strcmp(i8*, i8*) #2

declare dso_local i32 @SIO_Mount(i32, i8*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
