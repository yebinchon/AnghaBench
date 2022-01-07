; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/imv_examples/extr_imv2pgm.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/imv_examples/extr_imv2pgm.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"usage: %s data.imv mbx mby out.pgm\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"File to short!\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"P5\0A%d %d\0A255\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i8, align 1
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 5
  br i1 %17, label %18, label %23

18:                                               ; preds = %2
  %19 = load i8**, i8*** %5, align 8
  %20 = getelementptr inbounds i8*, i8** %19, i64 0
  %21 = load i8*, i8** %20, align 8
  %22 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %21)
  store i32 0, i32* %3, align 4
  br label %169

23:                                               ; preds = %2
  %24 = load i8**, i8*** %5, align 8
  %25 = getelementptr inbounds i8*, i8** %24, i64 2
  %26 = load i8*, i8** %25, align 8
  %27 = call i32 @atoi(i8* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i8**, i8*** %5, align 8
  %29 = getelementptr inbounds i8*, i8** %28, i64 3
  %30 = load i8*, i8** %29, align 8
  %31 = call i32 @atoi(i8* %30)
  store i32 %31, i32* %7, align 4
  %32 = load i8**, i8*** %5, align 8
  %33 = getelementptr inbounds i8*, i8** %32, i64 1
  %34 = load i8*, i8** %33, align 8
  %35 = call i32* @fopen(i8* %34, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %35, i32** %8, align 8
  %36 = load i32*, i32** %8, align 8
  %37 = load i32, i32* @SEEK_END, align 4
  %38 = call i32 @fseek(i32* %36, i32 0, i32 %37)
  %39 = load i32*, i32** %8, align 8
  %40 = call i64 @ftell(i32* %39)
  store i64 %40, i64* %9, align 8
  %41 = load i32*, i32** %8, align 8
  %42 = load i32, i32* @SEEK_SET, align 4
  %43 = call i32 @fseek(i32* %41, i32 0, i32 %42)
  %44 = load i64, i64* %9, align 8
  %45 = add nsw i64 %44, 1
  %46 = trunc i64 %45 to i32
  %47 = call i8* @malloc(i32 %46)
  store i8* %47, i8** %10, align 8
  %48 = load i8*, i8** %10, align 8
  %49 = load i64, i64* %9, align 8
  %50 = load i32*, i32** %8, align 8
  %51 = call i32 @fread(i8* %48, i64 %49, i32 1, i32* %50)
  %52 = load i32*, i32** %8, align 8
  %53 = call i32 @fclose(i32* %52)
  %54 = load i8*, i8** %10, align 8
  %55 = load i64, i64* %9, align 8
  %56 = getelementptr inbounds i8, i8* %54, i64 %55
  store i8 0, i8* %56, align 1
  %57 = load i64, i64* %9, align 8
  %58 = load i32, i32* %6, align 4
  %59 = add nsw i32 %58, 1
  %60 = load i32, i32* %7, align 4
  %61 = mul nsw i32 %59, %60
  %62 = mul nsw i32 %61, 4
  %63 = sext i32 %62 to i64
  %64 = icmp slt i64 %57, %63
  br i1 %64, label %65, label %67

65:                                               ; preds = %23
  %66 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %169

67:                                               ; preds = %23
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 1
  %70 = load i32, i32* %7, align 4
  %71 = mul nsw i32 %69, %70
  %72 = sext i32 %71 to i64
  %73 = mul i64 %72, 8
  %74 = trunc i64 %73 to i32
  %75 = call i8* @malloc(i32 %74)
  %76 = bitcast i8* %75 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %76, %struct.TYPE_3__** %11, align 8
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 0
  %79 = load i8*, i8** %10, align 8
  %80 = getelementptr inbounds i8, i8* %79, i64 0
  %81 = load i32, i32* %6, align 4
  %82 = add nsw i32 %81, 1
  %83 = load i32, i32* %7, align 4
  %84 = mul nsw i32 %82, %83
  %85 = sext i32 %84 to i64
  %86 = mul i64 %85, 8
  %87 = trunc i64 %86 to i32
  %88 = call i32 @memcpy(%struct.TYPE_3__* %78, i8* %80, i32 %87)
  %89 = load i8**, i8*** %5, align 8
  %90 = getelementptr inbounds i8*, i8** %89, i64 4
  %91 = load i8*, i8** %90, align 8
  %92 = call i32* @fopen(i8* %91, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %92, i32** %12, align 8
  %93 = load i32*, i32** %12, align 8
  %94 = load i32, i32* %6, align 4
  %95 = load i32, i32* %7, align 4
  %96 = call i32 @fprintf(i32* %93, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i32 %94, i32 %95)
  store i32 0, i32* %14, align 4
  br label %97

97:                                               ; preds = %163, %67
  %98 = load i32, i32* %14, align 4
  %99 = load i32, i32* %7, align 4
  %100 = icmp slt i32 %98, %99
  br i1 %100, label %101, label %166

101:                                              ; preds = %97
  store i32 0, i32* %13, align 4
  br label %102

102:                                              ; preds = %159, %101
  %103 = load i32, i32* %13, align 4
  %104 = load i32, i32* %6, align 4
  %105 = icmp slt i32 %103, %104
  br i1 %105, label %106, label %162

106:                                              ; preds = %102
  %107 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %108 = load i32, i32* %13, align 4
  %109 = load i32, i32* %6, align 4
  %110 = add nsw i32 %109, 1
  %111 = load i32, i32* %14, align 4
  %112 = mul nsw i32 %110, %111
  %113 = add nsw i32 %108, %112
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i64 %114
  %116 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %119 = load i32, i32* %13, align 4
  %120 = load i32, i32* %6, align 4
  %121 = add nsw i32 %120, 1
  %122 = load i32, i32* %14, align 4
  %123 = mul nsw i32 %121, %122
  %124 = add nsw i32 %119, %123
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %118, i64 %125
  %127 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = mul nsw i32 %117, %128
  %130 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %131 = load i32, i32* %13, align 4
  %132 = load i32, i32* %6, align 4
  %133 = add nsw i32 %132, 1
  %134 = load i32, i32* %14, align 4
  %135 = mul nsw i32 %133, %134
  %136 = add nsw i32 %131, %135
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %130, i64 %137
  %139 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i32 0, i32 1
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %142 = load i32, i32* %13, align 4
  %143 = load i32, i32* %6, align 4
  %144 = add nsw i32 %143, 1
  %145 = load i32, i32* %14, align 4
  %146 = mul nsw i32 %144, %145
  %147 = add nsw i32 %142, %146
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %141, i64 %148
  %150 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = mul nsw i32 %140, %151
  %153 = add nsw i32 %129, %152
  %154 = call i32 @sqrt(i32 %153)
  %155 = call zeroext i8 @floor(i32 %154)
  store i8 %155, i8* %15, align 1
  %156 = load i8, i8* %15, align 1
  %157 = load i32*, i32** %12, align 8
  %158 = call i32 @fputc(i8 zeroext %156, i32* %157)
  br label %159

159:                                              ; preds = %106
  %160 = load i32, i32* %13, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %13, align 4
  br label %102

162:                                              ; preds = %102
  br label %163

163:                                              ; preds = %162
  %164 = load i32, i32* %14, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %14, align 4
  br label %97

166:                                              ; preds = %97
  %167 = load i32*, i32** %12, align 8
  %168 = call i32 @fclose(i32* %167)
  store i32 0, i32* %3, align 4
  br label %169

169:                                              ; preds = %166, %65, %18
  %170 = load i32, i32* %3, align 4
  ret i32 %170
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @atoi(i8*) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @fseek(i32*, i32, i32) #1

declare dso_local i64 @ftell(i32*) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @fread(i8*, i64, i32, i32*) #1

declare dso_local i32 @fclose(i32*) #1

declare dso_local i32 @memcpy(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @fprintf(i32*, i8*, i32, i32) #1

declare dso_local zeroext i8 @floor(i32) #1

declare dso_local i32 @sqrt(i32) #1

declare dso_local i32 @fputc(i8 zeroext, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
