; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_epic_decode_pixel_pred.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_g2meet.c_epic_decode_pixel_pred.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }

@G_shift = common dso_local global i32 0, align 4
@R_shift = common dso_local global i32 0, align 4
@B_shift = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [30 x i8] c"RGB %d %d %d is out of range\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_4__*, i32, i32, i32*, i32*)* @epic_decode_pixel_pred to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @epic_decode_pixel_pred(%struct.TYPE_4__* %0, i32 %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32* %4, i32** %11, align 8
  %23 = load i32, i32* %8, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %107

25:                                               ; preds = %5
  %26 = load i32, i32* %9, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %107

28:                                               ; preds = %25
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sub nsw i32 %30, 1
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  %34 = load i32, i32* %33, align 4
  store i32 %34, i32* %13, align 4
  %35 = load i32*, i32** %11, align 8
  %36 = load i32, i32* %8, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %12, align 4
  %40 = load i32*, i32** %11, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sub nsw i32 %41, 1
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %40, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %14, align 4
  %46 = load i32, i32* %12, align 4
  %47 = load i32, i32* @G_shift, align 4
  %48 = ashr i32 %46, %47
  %49 = and i32 %48, 255
  store i32 %49, i32* %17, align 4
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @G_shift, align 4
  %52 = ashr i32 %50, %51
  %53 = and i32 %52, 255
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %14, align 4
  %55 = load i32, i32* @G_shift, align 4
  %56 = ashr i32 %54, %55
  %57 = and i32 %56, 255
  store i32 %57, i32* %19, align 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %59 = load i32, i32* %17, align 4
  %60 = load i32, i32* %18, align 4
  %61 = load i32, i32* %19, align 4
  %62 = call i32 @epic_decode_component_pred(%struct.TYPE_4__* %58, i32 %59, i32 %60, i32 %61)
  store i32 %62, i32* %21, align 4
  %63 = load i32, i32* %21, align 4
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %65 = load i32, i32* %12, align 4
  %66 = load i32, i32* @R_shift, align 4
  %67 = ashr i32 %65, %66
  %68 = and i32 %67, 255
  %69 = load i32, i32* %17, align 4
  %70 = sub nsw i32 %68, %69
  %71 = load i32, i32* %13, align 4
  %72 = load i32, i32* @R_shift, align 4
  %73 = ashr i32 %71, %72
  %74 = and i32 %73, 255
  %75 = load i32, i32* %18, align 4
  %76 = sub nsw i32 %74, %75
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* @R_shift, align 4
  %79 = ashr i32 %77, %78
  %80 = and i32 %79, 255
  %81 = load i32, i32* %19, align 4
  %82 = sub nsw i32 %80, %81
  %83 = call i32 @epic_decode_component_pred(%struct.TYPE_4__* %64, i32 %70, i32 %76, i32 %82)
  %84 = add nsw i32 %63, %83
  store i32 %84, i32* %20, align 4
  %85 = load i32, i32* %21, align 4
  %86 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %87 = load i32, i32* %12, align 4
  %88 = load i32, i32* @B_shift, align 4
  %89 = ashr i32 %87, %88
  %90 = and i32 %89, 255
  %91 = load i32, i32* %17, align 4
  %92 = sub nsw i32 %90, %91
  %93 = load i32, i32* %13, align 4
  %94 = load i32, i32* @B_shift, align 4
  %95 = ashr i32 %93, %94
  %96 = and i32 %95, 255
  %97 = load i32, i32* %18, align 4
  %98 = sub nsw i32 %96, %97
  %99 = load i32, i32* %14, align 4
  %100 = load i32, i32* @B_shift, align 4
  %101 = ashr i32 %99, %100
  %102 = and i32 %101, 255
  %103 = load i32, i32* %19, align 4
  %104 = sub nsw i32 %102, %103
  %105 = call i32 @epic_decode_component_pred(%struct.TYPE_4__* %86, i32 %92, i32 %98, i32 %104)
  %106 = add nsw i32 %85, %105
  store i32 %106, i32* %22, align 4
  br label %160

107:                                              ; preds = %25, %5
  %108 = load i32, i32* %8, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %117

110:                                              ; preds = %107
  %111 = load i32*, i32** %10, align 8
  %112 = load i32, i32* %8, align 4
  %113 = sub nsw i32 %112, 1
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds i32, i32* %111, i64 %114
  %116 = load i32, i32* %115, align 4
  store i32 %116, i32* %15, align 4
  br label %123

117:                                              ; preds = %107
  %118 = load i32*, i32** %11, align 8
  %119 = load i32, i32* %8, align 4
  %120 = sext i32 %119 to i64
  %121 = getelementptr inbounds i32, i32* %118, i64 %120
  %122 = load i32, i32* %121, align 4
  store i32 %122, i32* %15, align 4
  br label %123

123:                                              ; preds = %117, %110
  %124 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %125 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %124, i32 0, i32 1
  %126 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %127 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %126, i32 0, i32 0
  %128 = call i32 @ff_els_decode_unsigned(i32* %125, i32* %127)
  store i32 %128, i32* %16, align 4
  %129 = load i32, i32* %15, align 4
  %130 = load i32, i32* @R_shift, align 4
  %131 = ashr i32 %129, %130
  %132 = and i32 %131, 255
  %133 = load i32, i32* %16, align 4
  %134 = call i32 @TOSIGNED(i32 %133)
  %135 = sub nsw i32 %132, %134
  store i32 %135, i32* %20, align 4
  %136 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %137 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %136, i32 0, i32 1
  %138 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 0
  %140 = call i32 @ff_els_decode_unsigned(i32* %137, i32* %139)
  store i32 %140, i32* %16, align 4
  %141 = load i32, i32* %15, align 4
  %142 = load i32, i32* @G_shift, align 4
  %143 = ashr i32 %141, %142
  %144 = and i32 %143, 255
  %145 = load i32, i32* %16, align 4
  %146 = call i32 @TOSIGNED(i32 %145)
  %147 = sub nsw i32 %144, %146
  store i32 %147, i32* %21, align 4
  %148 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %149 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %148, i32 0, i32 1
  %150 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %151 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %150, i32 0, i32 0
  %152 = call i32 @ff_els_decode_unsigned(i32* %149, i32* %151)
  store i32 %152, i32* %16, align 4
  %153 = load i32, i32* %15, align 4
  %154 = load i32, i32* @B_shift, align 4
  %155 = ashr i32 %153, %154
  %156 = and i32 %155, 255
  %157 = load i32, i32* %16, align 4
  %158 = call i32 @TOSIGNED(i32 %157)
  %159 = sub nsw i32 %156, %158
  store i32 %159, i32* %22, align 4
  br label %160

160:                                              ; preds = %123, %28
  %161 = load i32, i32* %20, align 4
  %162 = icmp slt i32 %161, 0
  br i1 %162, label %178, label %163

163:                                              ; preds = %160
  %164 = load i32, i32* %21, align 4
  %165 = icmp slt i32 %164, 0
  br i1 %165, label %178, label %166

166:                                              ; preds = %163
  %167 = load i32, i32* %22, align 4
  %168 = icmp slt i32 %167, 0
  br i1 %168, label %178, label %169

169:                                              ; preds = %166
  %170 = load i32, i32* %20, align 4
  %171 = icmp sgt i32 %170, 255
  br i1 %171, label %178, label %172

172:                                              ; preds = %169
  %173 = load i32, i32* %21, align 4
  %174 = icmp sgt i32 %173, 255
  br i1 %174, label %178, label %175

175:                                              ; preds = %172
  %176 = load i32, i32* %22, align 4
  %177 = icmp sgt i32 %176, 255
  br i1 %177, label %178, label %183

178:                                              ; preds = %175, %172, %169, %166, %163, %160
  %179 = load i32, i32* %20, align 4
  %180 = load i32, i32* %21, align 4
  %181 = load i32, i32* %22, align 4
  %182 = call i32 @avpriv_request_sample(i32* null, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i32 %179, i32 %180, i32 %181)
  store i32 0, i32* %6, align 4
  br label %195

183:                                              ; preds = %175
  %184 = load i32, i32* %20, align 4
  %185 = load i32, i32* @R_shift, align 4
  %186 = shl i32 %184, %185
  %187 = load i32, i32* %21, align 4
  %188 = load i32, i32* @G_shift, align 4
  %189 = shl i32 %187, %188
  %190 = or i32 %186, %189
  %191 = load i32, i32* %22, align 4
  %192 = load i32, i32* @B_shift, align 4
  %193 = shl i32 %191, %192
  %194 = or i32 %190, %193
  store i32 %194, i32* %6, align 4
  br label %195

195:                                              ; preds = %183, %178
  %196 = load i32, i32* %6, align 4
  ret i32 %196
}

declare dso_local i32 @epic_decode_component_pred(%struct.TYPE_4__*, i32, i32, i32) #1

declare dso_local i32 @ff_els_decode_unsigned(i32*, i32*) #1

declare dso_local i32 @TOSIGNED(i32) #1

declare dso_local i32 @avpriv_request_sample(i32*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
