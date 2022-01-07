; ModuleID = '/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_CreateDefaultImage.c'
source_filename = "/home/carl/AnghaBench/Quake-III-Arena/code/renderer/extr_tr_image.c_R_CreateDefaultImage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }

@DEFAULT_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [9 x i8] c"*default\00", align 1
@qtrue = common dso_local global i32 0, align 4
@qfalse = common dso_local global i32 0, align 4
@GL_REPEAT = common dso_local global i32 0, align 4
@tr = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @R_CreateDefaultImage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @R_CreateDefaultImage() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = load i32, i32* @DEFAULT_SIZE, align 4
  %6 = zext i32 %5 to i64
  %7 = load i32, i32* @DEFAULT_SIZE, align 4
  %8 = zext i32 %7 to i64
  %9 = call i8* @llvm.stacksave()
  store i8* %9, i8** %2, align 8
  %10 = mul nuw i64 %6, %8
  %11 = alloca [4 x i32], i64 %10, align 16
  store i64 %6, i64* %3, align 8
  store i64 %8, i64* %4, align 8
  %12 = bitcast [4 x i32]* %11 to i32***
  %13 = mul nuw i64 %6, %8
  %14 = mul nuw i64 16, %13
  %15 = trunc i64 %14 to i32
  %16 = call i32 @Com_Memset(i32*** %12, i32 32, i32 %15)
  store i32 0, i32* %1, align 4
  br label %17

17:                                               ; preds = %142, %0
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @DEFAULT_SIZE, align 4
  %20 = icmp slt i32 %18, %19
  br i1 %20, label %21, label %145

21:                                               ; preds = %17
  %22 = mul nsw i64 0, %8
  %23 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %22
  %24 = load i32, i32* %1, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds [4 x i32], [4 x i32]* %23, i64 %25
  %27 = getelementptr inbounds [4 x i32], [4 x i32]* %26, i64 0, i64 3
  store i32 255, i32* %27, align 4
  %28 = mul nsw i64 0, %8
  %29 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %28
  %30 = load i32, i32* %1, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds [4 x i32], [4 x i32]* %29, i64 %31
  %33 = getelementptr inbounds [4 x i32], [4 x i32]* %32, i64 0, i64 2
  store i32 255, i32* %33, align 8
  %34 = mul nsw i64 0, %8
  %35 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %34
  %36 = load i32, i32* %1, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds [4 x i32], [4 x i32]* %35, i64 %37
  %39 = getelementptr inbounds [4 x i32], [4 x i32]* %38, i64 0, i64 1
  store i32 255, i32* %39, align 4
  %40 = mul nsw i64 0, %8
  %41 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %40
  %42 = load i32, i32* %1, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds [4 x i32], [4 x i32]* %41, i64 %43
  %45 = getelementptr inbounds [4 x i32], [4 x i32]* %44, i64 0, i64 0
  store i32 255, i32* %45, align 16
  %46 = load i32, i32* %1, align 4
  %47 = sext i32 %46 to i64
  %48 = mul nsw i64 %47, %8
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %48
  %50 = getelementptr inbounds [4 x i32], [4 x i32]* %49, i64 0
  %51 = getelementptr inbounds [4 x i32], [4 x i32]* %50, i64 0, i64 3
  store i32 255, i32* %51, align 4
  %52 = load i32, i32* %1, align 4
  %53 = sext i32 %52 to i64
  %54 = mul nsw i64 %53, %8
  %55 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %54
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %55, i64 0
  %57 = getelementptr inbounds [4 x i32], [4 x i32]* %56, i64 0, i64 2
  store i32 255, i32* %57, align 8
  %58 = load i32, i32* %1, align 4
  %59 = sext i32 %58 to i64
  %60 = mul nsw i64 %59, %8
  %61 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %60
  %62 = getelementptr inbounds [4 x i32], [4 x i32]* %61, i64 0
  %63 = getelementptr inbounds [4 x i32], [4 x i32]* %62, i64 0, i64 1
  store i32 255, i32* %63, align 4
  %64 = load i32, i32* %1, align 4
  %65 = sext i32 %64 to i64
  %66 = mul nsw i64 %65, %8
  %67 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %66
  %68 = getelementptr inbounds [4 x i32], [4 x i32]* %67, i64 0
  %69 = getelementptr inbounds [4 x i32], [4 x i32]* %68, i64 0, i64 0
  store i32 255, i32* %69, align 16
  %70 = load i32, i32* @DEFAULT_SIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = mul nsw i64 %72, %8
  %74 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %73
  %75 = load i32, i32* %1, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds [4 x i32], [4 x i32]* %74, i64 %76
  %78 = getelementptr inbounds [4 x i32], [4 x i32]* %77, i64 0, i64 3
  store i32 255, i32* %78, align 4
  %79 = load i32, i32* @DEFAULT_SIZE, align 4
  %80 = sub nsw i32 %79, 1
  %81 = sext i32 %80 to i64
  %82 = mul nsw i64 %81, %8
  %83 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %82
  %84 = load i32, i32* %1, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds [4 x i32], [4 x i32]* %83, i64 %85
  %87 = getelementptr inbounds [4 x i32], [4 x i32]* %86, i64 0, i64 2
  store i32 255, i32* %87, align 8
  %88 = load i32, i32* @DEFAULT_SIZE, align 4
  %89 = sub nsw i32 %88, 1
  %90 = sext i32 %89 to i64
  %91 = mul nsw i64 %90, %8
  %92 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %91
  %93 = load i32, i32* %1, align 4
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds [4 x i32], [4 x i32]* %92, i64 %94
  %96 = getelementptr inbounds [4 x i32], [4 x i32]* %95, i64 0, i64 1
  store i32 255, i32* %96, align 4
  %97 = load i32, i32* @DEFAULT_SIZE, align 4
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = mul nsw i64 %99, %8
  %101 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %100
  %102 = load i32, i32* %1, align 4
  %103 = sext i32 %102 to i64
  %104 = getelementptr inbounds [4 x i32], [4 x i32]* %101, i64 %103
  %105 = getelementptr inbounds [4 x i32], [4 x i32]* %104, i64 0, i64 0
  store i32 255, i32* %105, align 16
  %106 = load i32, i32* %1, align 4
  %107 = sext i32 %106 to i64
  %108 = mul nsw i64 %107, %8
  %109 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %108
  %110 = load i32, i32* @DEFAULT_SIZE, align 4
  %111 = sub nsw i32 %110, 1
  %112 = sext i32 %111 to i64
  %113 = getelementptr inbounds [4 x i32], [4 x i32]* %109, i64 %112
  %114 = getelementptr inbounds [4 x i32], [4 x i32]* %113, i64 0, i64 3
  store i32 255, i32* %114, align 4
  %115 = load i32, i32* %1, align 4
  %116 = sext i32 %115 to i64
  %117 = mul nsw i64 %116, %8
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %117
  %119 = load i32, i32* @DEFAULT_SIZE, align 4
  %120 = sub nsw i32 %119, 1
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds [4 x i32], [4 x i32]* %118, i64 %121
  %123 = getelementptr inbounds [4 x i32], [4 x i32]* %122, i64 0, i64 2
  store i32 255, i32* %123, align 8
  %124 = load i32, i32* %1, align 4
  %125 = sext i32 %124 to i64
  %126 = mul nsw i64 %125, %8
  %127 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %126
  %128 = load i32, i32* @DEFAULT_SIZE, align 4
  %129 = sub nsw i32 %128, 1
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds [4 x i32], [4 x i32]* %127, i64 %130
  %132 = getelementptr inbounds [4 x i32], [4 x i32]* %131, i64 0, i64 1
  store i32 255, i32* %132, align 4
  %133 = load i32, i32* %1, align 4
  %134 = sext i32 %133 to i64
  %135 = mul nsw i64 %134, %8
  %136 = getelementptr inbounds [4 x i32], [4 x i32]* %11, i64 %135
  %137 = load i32, i32* @DEFAULT_SIZE, align 4
  %138 = sub nsw i32 %137, 1
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds [4 x i32], [4 x i32]* %136, i64 %139
  %141 = getelementptr inbounds [4 x i32], [4 x i32]* %140, i64 0, i64 0
  store i32 255, i32* %141, align 16
  br label %142

142:                                              ; preds = %21
  %143 = load i32, i32* %1, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %1, align 4
  br label %17

145:                                              ; preds = %17
  %146 = bitcast [4 x i32]* %11 to i32*
  %147 = load i32, i32* @DEFAULT_SIZE, align 4
  %148 = load i32, i32* @DEFAULT_SIZE, align 4
  %149 = load i32, i32* @qtrue, align 4
  %150 = load i32, i32* @qfalse, align 4
  %151 = load i32, i32* @GL_REPEAT, align 4
  %152 = call i32 @R_CreateImage(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32* %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151)
  store i32 %152, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @tr, i32 0, i32 0), align 4
  %153 = load i8*, i8** %2, align 8
  call void @llvm.stackrestore(i8* %153)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @Com_Memset(i32***, i32, i32) #2

declare dso_local i32 @R_CreateImage(i8*, i32*, i32, i32, i32, i32, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
