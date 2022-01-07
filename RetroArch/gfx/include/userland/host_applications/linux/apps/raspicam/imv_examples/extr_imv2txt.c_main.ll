; ModuleID = '/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/imv_examples/extr_imv2txt.c_main.c'
source_filename = "/home/carl/AnghaBench/RetroArch/gfx/include/userland/host_applications/linux/apps/raspicam/imv_examples/extr_imv2txt.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i32, i32 }

@.str = private unnamed_addr constant [36 x i8] c"usage: %s data.imv mbx mby out.dat\0A\00", align 1
@.str.1 = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@SEEK_END = common dso_local global i32 0, align 4
@SEEK_SET = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [16 x i8] c"File to short!\0A\00", align 1
@.str.3 = private unnamed_addr constant [2 x i8] c"w\00", align 1
@.str.4 = private unnamed_addr constant [14 x i8] c"#x y u v sad\0A\00", align 1
@.str.5 = private unnamed_addr constant [16 x i8] c"%g %g %d %d %d\0A\00", align 1

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
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  %15 = load i32, i32* %4, align 4
  %16 = icmp ne i32 %15, 5
  br i1 %16, label %17, label %22

17:                                               ; preds = %2
  %18 = load i8**, i8*** %5, align 8
  %19 = getelementptr inbounds i8*, i8** %18, i64 0
  %20 = load i8*, i8** %19, align 8
  %21 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i8* %20)
  store i32 0, i32* %3, align 4
  br label %160

22:                                               ; preds = %2
  %23 = load i8**, i8*** %5, align 8
  %24 = getelementptr inbounds i8*, i8** %23, i64 2
  %25 = load i8*, i8** %24, align 8
  %26 = call i32 @atoi(i8* %25)
  store i32 %26, i32* %6, align 4
  %27 = load i8**, i8*** %5, align 8
  %28 = getelementptr inbounds i8*, i8** %27, i64 3
  %29 = load i8*, i8** %28, align 8
  %30 = call i32 @atoi(i8* %29)
  store i32 %30, i32* %7, align 4
  %31 = load i8**, i8*** %5, align 8
  %32 = getelementptr inbounds i8*, i8** %31, i64 1
  %33 = load i8*, i8** %32, align 8
  %34 = call i32* @fopen(i8* %33, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0))
  store i32* %34, i32** %8, align 8
  %35 = load i32*, i32** %8, align 8
  %36 = load i32, i32* @SEEK_END, align 4
  %37 = call i32 @fseek(i32* %35, i32 0, i32 %36)
  %38 = load i32*, i32** %8, align 8
  %39 = call i64 @ftell(i32* %38)
  store i64 %39, i64* %9, align 8
  %40 = load i32*, i32** %8, align 8
  %41 = load i32, i32* @SEEK_SET, align 4
  %42 = call i32 @fseek(i32* %40, i32 0, i32 %41)
  %43 = load i64, i64* %9, align 8
  %44 = add nsw i64 %43, 1
  %45 = trunc i64 %44 to i32
  %46 = call i8* @malloc(i32 %45)
  store i8* %46, i8** %10, align 8
  %47 = load i8*, i8** %10, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i32*, i32** %8, align 8
  %50 = call i32 @fread(i8* %47, i64 %48, i32 1, i32* %49)
  %51 = load i32*, i32** %8, align 8
  %52 = call i32 @fclose(i32* %51)
  %53 = load i8*, i8** %10, align 8
  %54 = load i64, i64* %9, align 8
  %55 = getelementptr inbounds i8, i8* %53, i64 %54
  store i8 0, i8* %55, align 1
  %56 = load i64, i64* %9, align 8
  %57 = load i32, i32* %6, align 4
  %58 = add nsw i32 %57, 1
  %59 = load i32, i32* %7, align 4
  %60 = mul nsw i32 %58, %59
  %61 = mul nsw i32 %60, 4
  %62 = sext i32 %61 to i64
  %63 = icmp slt i64 %56, %62
  br i1 %63, label %64, label %66

64:                                               ; preds = %22
  %65 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %160

66:                                               ; preds = %22
  %67 = load i32, i32* %6, align 4
  %68 = add nsw i32 %67, 1
  %69 = load i32, i32* %7, align 4
  %70 = mul nsw i32 %68, %69
  %71 = sext i32 %70 to i64
  %72 = mul i64 %71, 12
  %73 = trunc i64 %72 to i32
  %74 = call i8* @malloc(i32 %73)
  %75 = bitcast i8* %74 to %struct.TYPE_3__*
  store %struct.TYPE_3__* %75, %struct.TYPE_3__** %11, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i64 0
  %78 = load i8*, i8** %10, align 8
  %79 = getelementptr inbounds i8, i8* %78, i64 0
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  %82 = load i32, i32* %7, align 4
  %83 = mul nsw i32 %81, %82
  %84 = sext i32 %83 to i64
  %85 = mul i64 %84, 12
  %86 = trunc i64 %85 to i32
  %87 = call i32 @memcpy(%struct.TYPE_3__* %77, i8* %79, i32 %86)
  %88 = load i8**, i8*** %5, align 8
  %89 = getelementptr inbounds i8*, i8** %88, i64 4
  %90 = load i8*, i8** %89, align 8
  %91 = call i32* @fopen(i8* %90, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.3, i64 0, i64 0))
  store i32* %91, i32** %12, align 8
  %92 = load i32*, i32** %12, align 8
  %93 = call i32 (i32*, i8*, ...) @fprintf(i32* %92, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0))
  store i32 0, i32* %14, align 4
  br label %94

94:                                               ; preds = %154, %66
  %95 = load i32, i32* %14, align 4
  %96 = load i32, i32* %7, align 4
  %97 = icmp slt i32 %95, %96
  br i1 %97, label %98, label %157

98:                                               ; preds = %94
  store i32 0, i32* %13, align 4
  br label %99

99:                                               ; preds = %150, %98
  %100 = load i32, i32* %13, align 4
  %101 = load i32, i32* %6, align 4
  %102 = icmp slt i32 %100, %101
  br i1 %102, label %103, label %153

103:                                              ; preds = %99
  %104 = load i32*, i32** %12, align 8
  %105 = load i32, i32* %13, align 4
  %106 = sitofp i32 %105 to double
  %107 = fadd double %106, 5.000000e-01
  %108 = fmul double %107, 1.600000e+01
  %109 = load i32, i32* %7, align 4
  %110 = load i32, i32* %14, align 4
  %111 = sub nsw i32 %109, %110
  %112 = sitofp i32 %111 to double
  %113 = fsub double %112, 5.000000e-01
  %114 = fmul double %113, 1.600000e+01
  %115 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %116 = load i32, i32* %13, align 4
  %117 = load i32, i32* %6, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32, i32* %14, align 4
  %120 = mul nsw i32 %118, %119
  %121 = add nsw i32 %116, %120
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %115, i64 %122
  %124 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = sub nsw i32 0, %125
  %127 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %128 = load i32, i32* %13, align 4
  %129 = load i32, i32* %6, align 4
  %130 = add nsw i32 %129, 1
  %131 = load i32, i32* %14, align 4
  %132 = mul nsw i32 %130, %131
  %133 = add nsw i32 %128, %132
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %127, i64 %134
  %136 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %139 = load i32, i32* %13, align 4
  %140 = load i32, i32* %6, align 4
  %141 = add nsw i32 %140, 1
  %142 = load i32, i32* %14, align 4
  %143 = mul nsw i32 %141, %142
  %144 = add nsw i32 %139, %143
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %138, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 4
  %149 = call i32 (i32*, i8*, ...) @fprintf(i32* %104, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.5, i64 0, i64 0), double %108, double %114, i32 %126, i32 %137, i32 %148)
  br label %150

150:                                              ; preds = %103
  %151 = load i32, i32* %13, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %13, align 4
  br label %99

153:                                              ; preds = %99
  br label %154

154:                                              ; preds = %153
  %155 = load i32, i32* %14, align 4
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %14, align 4
  br label %94

157:                                              ; preds = %94
  %158 = load i32*, i32** %12, align 8
  %159 = call i32 @fclose(i32* %158)
  store i32 0, i32* %3, align 4
  br label %160

160:                                              ; preds = %157, %64, %17
  %161 = load i32, i32* %3, align 4
  ret i32 %161
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

declare dso_local i32 @fprintf(i32*, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
