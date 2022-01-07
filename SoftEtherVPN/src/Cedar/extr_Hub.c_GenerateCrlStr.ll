; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_GenerateCrlStr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Hub.c_GenerateCrlStr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32, %struct.TYPE_4__*, i32* }
%struct.TYPE_4__ = type { i32, i32 }

@.str = private unnamed_addr constant [1 x i32] zeroinitializer, align 4
@MAX_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i32] [i32 83, i32 117, i32 98, i32 106, i32 101, i32 99, i32 116, i32 61, i32 34, i32 0], align 4
@.str.2 = private unnamed_addr constant [4 x i32] [i32 34, i32 44, i32 32, i32 0], align 4
@.str.3 = private unnamed_addr constant [9 x i32] [i32 83, i32 101, i32 114, i32 105, i32 97, i32 108, i32 61, i32 34, i32 0], align 4
@MD5_SIZE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [6 x i32] [i32 77, i32 68, i32 53, i32 61, i32 34, i32 0], align 4
@SHA1_SIZE = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [7 x i32] [i32 83, i32 72, i32 65, i32 49, i32 61, i32 34, i32 0], align 4
@.str.6 = private unnamed_addr constant [3 x i32] [i32 44, i32 32, i32 0], align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @GenerateCrlStr(%struct.TYPE_5__* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.TYPE_5__*, align 8
  %4 = alloca [2048 x i8], align 16
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca [128 x i8], align 16
  %8 = alloca [128 x i8], align 16
  %9 = alloca [128 x i8], align 16
  %10 = alloca [128 x i8], align 16
  %11 = alloca [128 x i8], align 16
  %12 = alloca [128 x i8], align 16
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %3, align 8
  %13 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %14 = icmp eq %struct.TYPE_5__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  store i8* null, i8** %2, align 8
  br label %129

16:                                               ; preds = %1
  %17 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %18 = call i32 @UniStrCpy(i8* %17, i32 2048, i8* bitcast ([1 x i32]* @.str to i8*))
  %19 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %19, i32 0, i32 3
  %21 = load i32*, i32** %20, align 8
  %22 = icmp ne i32* %21, null
  br i1 %22, label %23, label %40

23:                                               ; preds = %16
  %24 = load i32, i32* @MAX_SIZE, align 4
  %25 = zext i32 %24 to i64
  %26 = call i8* @llvm.stacksave()
  store i8* %26, i8** %5, align 8
  %27 = alloca i8, i64 %25, align 16
  store i64 %25, i64* %6, align 8
  %28 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %29 = call i32 @UniStrCat(i8* %28, i32 2048, i8* bitcast ([10 x i32]* @.str.1 to i8*))
  %30 = trunc i64 %25 to i32
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 3
  %33 = load i32*, i32** %32, align 8
  %34 = call i32 @GetAllNameFromName(i8* %27, i32 %30, i32* %33)
  %35 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %36 = call i32 @UniStrCat(i8* %35, i32 2048, i8* %27)
  %37 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %38 = call i32 @UniStrCat(i8* %37, i32 2048, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  %39 = load i8*, i8** %5, align 8
  call void @llvm.stackrestore(i8* %39)
  br label %40

40:                                               ; preds = %23, %16
  %41 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %41, i32 0, i32 2
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = icmp ne %struct.TYPE_4__* %43, null
  br i1 %44, label %45, label %68

45:                                               ; preds = %40
  %46 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 2
  %49 = load %struct.TYPE_4__*, %struct.TYPE_4__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %53 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %52, i32 0, i32 2
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @BinToStrEx(i8* %46, i32 128, i32 %51, i32 %56)
  %58 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %59 = getelementptr inbounds [128 x i8], [128 x i8]* %7, i64 0, i64 0
  %60 = call i32 @StrToUni(i8* %58, i32 128, i8* %59)
  %61 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %62 = call i32 @UniStrCat(i8* %61, i32 2048, i8* bitcast ([9 x i32]* @.str.3 to i8*))
  %63 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %64 = getelementptr inbounds [128 x i8], [128 x i8]* %8, i64 0, i64 0
  %65 = call i32 @UniStrCat(i8* %63, i32 2048, i8* %64)
  %66 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %67 = call i32 @UniStrCat(i8* %66, i32 2048, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  br label %68

68:                                               ; preds = %45, %40
  %69 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load i32, i32* @MD5_SIZE, align 4
  %73 = call i32 @IsZero(i32 %71, i32 %72)
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %92

75:                                               ; preds = %68
  %76 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %77 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @MD5_SIZE, align 4
  %81 = call i32 @BinToStrEx(i8* %76, i32 128, i32 %79, i32 %80)
  %82 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %83 = getelementptr inbounds [128 x i8], [128 x i8]* %9, i64 0, i64 0
  %84 = call i32 @StrToUni(i8* %82, i32 128, i8* %83)
  %85 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %86 = call i32 @UniStrCat(i8* %85, i32 2048, i8* bitcast ([6 x i32]* @.str.4 to i8*))
  %87 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %88 = getelementptr inbounds [128 x i8], [128 x i8]* %10, i64 0, i64 0
  %89 = call i32 @UniStrCat(i8* %87, i32 2048, i8* %88)
  %90 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %91 = call i32 @UniStrCat(i8* %90, i32 2048, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  br label %92

92:                                               ; preds = %75, %68
  %93 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %94 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = load i32, i32* @SHA1_SIZE, align 4
  %97 = call i32 @IsZero(i32 %95, i32 %96)
  %98 = icmp eq i32 %97, 0
  br i1 %98, label %99, label %116

99:                                               ; preds = %92
  %100 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %3, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SHA1_SIZE, align 4
  %105 = call i32 @BinToStrEx(i8* %100, i32 128, i32 %103, i32 %104)
  %106 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %107 = getelementptr inbounds [128 x i8], [128 x i8]* %11, i64 0, i64 0
  %108 = call i32 @StrToUni(i8* %106, i32 128, i8* %107)
  %109 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %110 = call i32 @UniStrCat(i8* %109, i32 2048, i8* bitcast ([7 x i32]* @.str.5 to i8*))
  %111 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %112 = getelementptr inbounds [128 x i8], [128 x i8]* %12, i64 0, i64 0
  %113 = call i32 @UniStrCat(i8* %111, i32 2048, i8* %112)
  %114 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %115 = call i32 @UniStrCat(i8* %114, i32 2048, i8* bitcast ([4 x i32]* @.str.2 to i8*))
  br label %116

116:                                              ; preds = %99, %92
  %117 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %118 = call i64 @UniEndWith(i8* %117, i8* bitcast ([3 x i32]* @.str.6 to i8*))
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %126

120:                                              ; preds = %116
  %121 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %122 = call i32 @UniStrLen(i8* %121)
  %123 = sub nsw i32 %122, 2
  %124 = sext i32 %123 to i64
  %125 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 %124
  store i8 0, i8* %125, align 1
  br label %126

126:                                              ; preds = %120, %116
  %127 = getelementptr inbounds [2048 x i8], [2048 x i8]* %4, i64 0, i64 0
  %128 = call i8* @CopyUniStr(i8* %127)
  store i8* %128, i8** %2, align 8
  br label %129

129:                                              ; preds = %126, %15
  %130 = load i8*, i8** %2, align 8
  ret i8* %130
}

declare dso_local i32 @UniStrCpy(i8*, i32, i8*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @UniStrCat(i8*, i32, i8*) #1

declare dso_local i32 @GetAllNameFromName(i8*, i32, i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @BinToStrEx(i8*, i32, i32, i32) #1

declare dso_local i32 @StrToUni(i8*, i32, i8*) #1

declare dso_local i32 @IsZero(i32, i32) #1

declare dso_local i64 @UniEndWith(i8*, i8*) #1

declare dso_local i32 @UniStrLen(i8*) #1

declare dso_local i8* @CopyUniStr(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
