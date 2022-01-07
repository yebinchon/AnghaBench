; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_colorspace_set_rgb_coefficients.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Mupen64Plus/png/contrib/libtests/extr_....png.c_png_colorspace_set_rgb_coefficients.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i8*, i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i64, i64, i64 }

@PNG_COLORSPACE_HAVE_ENDPOINTS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"internal error handling cHRM coefficients\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"internal error handling cHRM->XYZ\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @png_colorspace_set_rgb_coefficients(%struct.TYPE_8__* %0) #0 {
  %2 = alloca %struct.TYPE_8__*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %2, align 8
  %8 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %169

12:                                               ; preds = %1
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PNG_COLORSPACE_HAVE_ENDPOINTS, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %169

20:                                               ; preds = %12
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 3
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  store i64 %25, i64* %3, align 8
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 3
  %28 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  store i64 %30, i64* %4, align 8
  %31 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 2
  %35 = load i64, i64* %34, align 8
  store i64 %35, i64* %5, align 8
  %36 = load i64, i64* %3, align 8
  %37 = load i64, i64* %4, align 8
  %38 = add nsw i64 %36, %37
  %39 = load i64, i64* %5, align 8
  %40 = add nsw i64 %38, %39
  store i64 %40, i64* %6, align 8
  %41 = load i64, i64* %6, align 8
  %42 = icmp sgt i64 %41, 0
  br i1 %42, label %43, label %165

43:                                               ; preds = %20
  %44 = load i64, i64* %3, align 8
  %45 = icmp sge i64 %44, 0
  br i1 %45, label %46, label %165

46:                                               ; preds = %43
  %47 = load i64, i64* %3, align 8
  %48 = load i64, i64* %6, align 8
  %49 = call i64 @png_muldiv(i64* %3, i64 %47, i32 32768, i64 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %165

51:                                               ; preds = %46
  %52 = load i64, i64* %3, align 8
  %53 = icmp sge i64 %52, 0
  br i1 %53, label %54, label %165

54:                                               ; preds = %51
  %55 = load i64, i64* %3, align 8
  %56 = icmp sle i64 %55, 32768
  br i1 %56, label %57, label %165

57:                                               ; preds = %54
  %58 = load i64, i64* %4, align 8
  %59 = icmp sge i64 %58, 0
  br i1 %59, label %60, label %165

60:                                               ; preds = %57
  %61 = load i64, i64* %4, align 8
  %62 = load i64, i64* %6, align 8
  %63 = call i64 @png_muldiv(i64* %4, i64 %61, i32 32768, i64 %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %165

65:                                               ; preds = %60
  %66 = load i64, i64* %4, align 8
  %67 = icmp sge i64 %66, 0
  br i1 %67, label %68, label %165

68:                                               ; preds = %65
  %69 = load i64, i64* %4, align 8
  %70 = icmp sle i64 %69, 32768
  br i1 %70, label %71, label %165

71:                                               ; preds = %68
  %72 = load i64, i64* %5, align 8
  %73 = icmp sge i64 %72, 0
  br i1 %73, label %74, label %165

74:                                               ; preds = %71
  %75 = load i64, i64* %5, align 8
  %76 = load i64, i64* %6, align 8
  %77 = call i64 @png_muldiv(i64* %5, i64 %75, i32 32768, i64 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %165

79:                                               ; preds = %74
  %80 = load i64, i64* %5, align 8
  %81 = icmp sge i64 %80, 0
  br i1 %81, label %82, label %165

82:                                               ; preds = %79
  %83 = load i64, i64* %5, align 8
  %84 = icmp sle i64 %83, 32768
  br i1 %84, label %85, label %165

85:                                               ; preds = %82
  %86 = load i64, i64* %3, align 8
  %87 = load i64, i64* %4, align 8
  %88 = add nsw i64 %86, %87
  %89 = load i64, i64* %5, align 8
  %90 = add nsw i64 %88, %89
  %91 = icmp sle i64 %90, 32769
  br i1 %91, label %92, label %165

92:                                               ; preds = %85
  store i32 0, i32* %7, align 4
  %93 = load i64, i64* %3, align 8
  %94 = load i64, i64* %4, align 8
  %95 = add nsw i64 %93, %94
  %96 = load i64, i64* %5, align 8
  %97 = add nsw i64 %95, %96
  %98 = icmp sgt i64 %97, 32768
  br i1 %98, label %99, label %100

99:                                               ; preds = %92
  store i32 -1, i32* %7, align 4
  br label %109

100:                                              ; preds = %92
  %101 = load i64, i64* %3, align 8
  %102 = load i64, i64* %4, align 8
  %103 = add nsw i64 %101, %102
  %104 = load i64, i64* %5, align 8
  %105 = add nsw i64 %103, %104
  %106 = icmp slt i64 %105, 32768
  br i1 %106, label %107, label %108

107:                                              ; preds = %100
  store i32 1, i32* %7, align 4
  br label %108

108:                                              ; preds = %107, %100
  br label %109

109:                                              ; preds = %108, %99
  %110 = load i32, i32* %7, align 4
  %111 = icmp ne i32 %110, 0
  br i1 %111, label %112, label %145

112:                                              ; preds = %109
  %113 = load i64, i64* %4, align 8
  %114 = load i64, i64* %3, align 8
  %115 = icmp sge i64 %113, %114
  br i1 %115, label %116, label %125

116:                                              ; preds = %112
  %117 = load i64, i64* %4, align 8
  %118 = load i64, i64* %5, align 8
  %119 = icmp sge i64 %117, %118
  br i1 %119, label %120, label %125

120:                                              ; preds = %116
  %121 = load i32, i32* %7, align 4
  %122 = sext i32 %121 to i64
  %123 = load i64, i64* %4, align 8
  %124 = add nsw i64 %123, %122
  store i64 %124, i64* %4, align 8
  br label %144

125:                                              ; preds = %116, %112
  %126 = load i64, i64* %3, align 8
  %127 = load i64, i64* %4, align 8
  %128 = icmp sge i64 %126, %127
  br i1 %128, label %129, label %138

129:                                              ; preds = %125
  %130 = load i64, i64* %3, align 8
  %131 = load i64, i64* %5, align 8
  %132 = icmp sge i64 %130, %131
  br i1 %132, label %133, label %138

133:                                              ; preds = %129
  %134 = load i32, i32* %7, align 4
  %135 = sext i32 %134 to i64
  %136 = load i64, i64* %3, align 8
  %137 = add nsw i64 %136, %135
  store i64 %137, i64* %3, align 8
  br label %143

138:                                              ; preds = %129, %125
  %139 = load i32, i32* %7, align 4
  %140 = sext i32 %139 to i64
  %141 = load i64, i64* %5, align 8
  %142 = add nsw i64 %141, %140
  store i64 %142, i64* %5, align 8
  br label %143

143:                                              ; preds = %138, %133
  br label %144

144:                                              ; preds = %143, %120
  br label %145

145:                                              ; preds = %144, %109
  %146 = load i64, i64* %3, align 8
  %147 = load i64, i64* %4, align 8
  %148 = add nsw i64 %146, %147
  %149 = load i64, i64* %5, align 8
  %150 = add nsw i64 %148, %149
  %151 = icmp ne i64 %150, 32768
  br i1 %151, label %152, label %155

152:                                              ; preds = %145
  %153 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %154 = call i32 @png_error(%struct.TYPE_8__* %153, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  br label %164

155:                                              ; preds = %145
  %156 = load i64, i64* %3, align 8
  %157 = inttoptr i64 %156 to i8*
  %158 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %159 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %158, i32 0, i32 2
  store i8* %157, i8** %159, align 8
  %160 = load i64, i64* %4, align 8
  %161 = inttoptr i64 %160 to i8*
  %162 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %163 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %162, i32 0, i32 1
  store i8* %161, i8** %163, align 8
  br label %164

164:                                              ; preds = %155, %152
  br label %168

165:                                              ; preds = %85, %82, %79, %74, %71, %68, %65, %60, %57, %54, %51, %46, %43, %20
  %166 = load %struct.TYPE_8__*, %struct.TYPE_8__** %2, align 8
  %167 = call i32 @png_error(%struct.TYPE_8__* %166, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  br label %168

168:                                              ; preds = %165, %164
  br label %169

169:                                              ; preds = %168, %12, %1
  ret void
}

declare dso_local i64 @png_muldiv(i64*, i64, i32, i64) #1

declare dso_local i32 @png_error(%struct.TYPE_8__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
