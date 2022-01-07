; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_display_lzss_icon.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/console/extr_video_console.c_vc_display_lzss_icon.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i64 }
%struct.TYPE_4__ = type { i32, i32, i32, i32*, i32*, i32, i32 }

@vinfo = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@N = common dso_local global i32 0, align 4
@F = common dso_local global i32 0, align 4
@THRESHOLD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @vc_display_lzss_icon(i32 %0, i32 %1, i32 %2, i32 %3, i32* %4, i32 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_4__, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32*, align 8
  %22 = alloca i32, align 4
  %23 = alloca i8*, align 8
  %24 = alloca i64, align 8
  %25 = alloca i32*, align 8
  %26 = alloca i32, align 4
  %27 = alloca i32, align 4
  %28 = alloca i32, align 4
  %29 = alloca i32, align 4
  %30 = alloca i32, align 4
  %31 = alloca i32, align 4
  %32 = alloca i32, align 4
  store i32 %0, i32* %9, align 4
  store i32 %1, i32* %10, align 4
  store i32 %2, i32* %11, align 4
  store i32 %3, i32* %12, align 4
  store i32* %4, i32** %13, align 8
  store i32 %5, i32* %14, align 4
  store i32* %6, i32** %15, align 8
  store i32 4, i32* %17, align 4
  %33 = load i32, i32* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vinfo, i32 0, i32 0), align 8
  store i32 %33, i32* %18, align 4
  %34 = call i32 (...) @vc_clean_boot_graphics()
  %35 = load i64, i64* getelementptr inbounds (%struct.TYPE_5__, %struct.TYPE_5__* @vinfo, i32 0, i32 1), align 8
  %36 = load i32, i32* %10, align 4
  %37 = load i32, i32* %18, align 4
  %38 = mul nsw i32 %36, %37
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %35, %39
  %41 = load i32, i32* %9, align 4
  %42 = load i32, i32* %17, align 4
  %43 = mul nsw i32 %41, %42
  %44 = sext i32 %43 to i64
  %45 = add nsw i64 %40, %44
  %46 = inttoptr i64 %45 to i32*
  store i32* %46, i32** %16, align 8
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  store i32 0, i32* %47, align 8
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 2
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 3
  %52 = load i32, i32* %12, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %51, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 4
  %56 = load i32, i32* %18, align 4
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %55, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 5
  %60 = load i32*, i32** %16, align 8
  %61 = ptrtoint i32* %60 to i32
  store i32 %61, i32* %59, align 8
  %62 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 6
  %63 = load i32*, i32** %15, align 8
  %64 = ptrtoint i32* %63 to i32
  store i32 %64, i32* %62, align 4
  store i32 0, i32* %20, align 4
  %65 = load i32*, i32** %13, align 8
  store i32* %65, i32** %21, align 8
  %66 = load i32, i32* %14, align 4
  store i32 %66, i32* %22, align 4
  %67 = load i32, i32* @N, align 4
  %68 = load i32, i32* @F, align 4
  %69 = add nsw i32 %67, %68
  %70 = sub nsw i32 %69, 1
  %71 = zext i32 %70 to i64
  %72 = call i8* @llvm.stacksave()
  store i8* %72, i8** %23, align 8
  %73 = alloca i32, i64 %71, align 16
  store i64 %71, i64* %24, align 8
  %74 = load i32*, i32** %21, align 8
  %75 = load i32, i32* %22, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  store i32* %77, i32** %25, align 8
  %78 = load i32*, i32** %21, align 8
  %79 = load i32, i32* %22, align 4
  %80 = sext i32 %79 to i64
  %81 = getelementptr inbounds i32, i32* %78, i64 %80
  store i32* %81, i32** %25, align 8
  store i32 0, i32* %26, align 4
  br label %82

82:                                               ; preds = %92, %7
  %83 = load i32, i32* %26, align 4
  %84 = load i32, i32* @N, align 4
  %85 = load i32, i32* @F, align 4
  %86 = sub nsw i32 %84, %85
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %95

88:                                               ; preds = %82
  %89 = load i32, i32* %26, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %73, i64 %90
  store i32 32, i32* %91, align 4
  br label %92

92:                                               ; preds = %88
  %93 = load i32, i32* %26, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %26, align 4
  br label %82

95:                                               ; preds = %82
  %96 = load i32, i32* @N, align 4
  %97 = load i32, i32* @F, align 4
  %98 = sub nsw i32 %96, %97
  store i32 %98, i32* %29, align 4
  store i32 0, i32* %31, align 4
  br label %99

99:                                               ; preds = %208, %95
  %100 = load i32, i32* %31, align 4
  %101 = lshr i32 %100, 1
  store i32 %101, i32* %31, align 4
  %102 = and i32 %101, 256
  %103 = icmp eq i32 %102, 0
  br i1 %103, label %104, label %116

104:                                              ; preds = %99
  %105 = load i32*, i32** %21, align 8
  %106 = load i32*, i32** %25, align 8
  %107 = icmp ult i32* %105, %106
  br i1 %107, label %108, label %112

108:                                              ; preds = %104
  %109 = load i32*, i32** %21, align 8
  %110 = getelementptr inbounds i32, i32* %109, i32 1
  store i32* %110, i32** %21, align 8
  %111 = load i32, i32* %109, align 4
  store i32 %111, i32* %30, align 4
  br label %113

112:                                              ; preds = %104
  br label %209

113:                                              ; preds = %108
  %114 = load i32, i32* %30, align 4
  %115 = or i32 %114, 65280
  store i32 %115, i32* %31, align 4
  br label %116

116:                                              ; preds = %113, %99
  %117 = load i32, i32* %31, align 4
  %118 = and i32 %117, 1
  %119 = icmp ne i32 %118, 0
  br i1 %119, label %120, label %146

120:                                              ; preds = %116
  %121 = load i32*, i32** %21, align 8
  %122 = load i32*, i32** %25, align 8
  %123 = icmp ult i32* %121, %122
  br i1 %123, label %124, label %128

124:                                              ; preds = %120
  %125 = load i32*, i32** %21, align 8
  %126 = getelementptr inbounds i32, i32* %125, i32 1
  store i32* %126, i32** %21, align 8
  %127 = load i32, i32* %125, align 4
  store i32 %127, i32* %30, align 4
  br label %129

128:                                              ; preds = %120
  br label %209

129:                                              ; preds = %124
  %130 = load i32, i32* %30, align 4
  %131 = call i32 @vc_decompress_lzss_next_pixel(i32 %130, %struct.TYPE_4__* %19)
  store i32 %131, i32* %20, align 4
  %132 = load i32, i32* %20, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %129
  %135 = load i32, i32* %20, align 4
  store i32 %135, i32* %8, align 4
  store i32 1, i32* %32, align 4
  br label %210

136:                                              ; preds = %129
  %137 = load i32, i32* %30, align 4
  %138 = load i32, i32* %29, align 4
  %139 = add nsw i32 %138, 1
  store i32 %139, i32* %29, align 4
  %140 = sext i32 %138 to i64
  %141 = getelementptr inbounds i32, i32* %73, i64 %140
  store i32 %137, i32* %141, align 4
  %142 = load i32, i32* @N, align 4
  %143 = sub nsw i32 %142, 1
  %144 = load i32, i32* %29, align 4
  %145 = and i32 %144, %143
  store i32 %145, i32* %29, align 4
  br label %208

146:                                              ; preds = %116
  %147 = load i32*, i32** %21, align 8
  %148 = load i32*, i32** %25, align 8
  %149 = icmp ult i32* %147, %148
  br i1 %149, label %150, label %154

150:                                              ; preds = %146
  %151 = load i32*, i32** %21, align 8
  %152 = getelementptr inbounds i32, i32* %151, i32 1
  store i32* %152, i32** %21, align 8
  %153 = load i32, i32* %151, align 4
  store i32 %153, i32* %26, align 4
  br label %155

154:                                              ; preds = %146
  br label %209

155:                                              ; preds = %150
  %156 = load i32*, i32** %21, align 8
  %157 = load i32*, i32** %25, align 8
  %158 = icmp ult i32* %156, %157
  br i1 %158, label %159, label %163

159:                                              ; preds = %155
  %160 = load i32*, i32** %21, align 8
  %161 = getelementptr inbounds i32, i32* %160, i32 1
  store i32* %161, i32** %21, align 8
  %162 = load i32, i32* %160, align 4
  store i32 %162, i32* %27, align 4
  br label %164

163:                                              ; preds = %155
  br label %209

164:                                              ; preds = %159
  %165 = load i32, i32* %27, align 4
  %166 = and i32 %165, 240
  %167 = shl i32 %166, 4
  %168 = load i32, i32* %26, align 4
  %169 = or i32 %168, %167
  store i32 %169, i32* %26, align 4
  %170 = load i32, i32* %27, align 4
  %171 = and i32 %170, 15
  %172 = load i32, i32* @THRESHOLD, align 4
  %173 = add nsw i32 %171, %172
  store i32 %173, i32* %27, align 4
  store i32 0, i32* %28, align 4
  br label %174

174:                                              ; preds = %204, %164
  %175 = load i32, i32* %28, align 4
  %176 = load i32, i32* %27, align 4
  %177 = icmp sle i32 %175, %176
  br i1 %177, label %178, label %207

178:                                              ; preds = %174
  %179 = load i32, i32* %26, align 4
  %180 = load i32, i32* %28, align 4
  %181 = add nsw i32 %179, %180
  %182 = load i32, i32* @N, align 4
  %183 = sub nsw i32 %182, 1
  %184 = and i32 %181, %183
  %185 = sext i32 %184 to i64
  %186 = getelementptr inbounds i32, i32* %73, i64 %185
  %187 = load i32, i32* %186, align 4
  store i32 %187, i32* %30, align 4
  %188 = load i32, i32* %30, align 4
  %189 = call i32 @vc_decompress_lzss_next_pixel(i32 %188, %struct.TYPE_4__* %19)
  store i32 %189, i32* %20, align 4
  %190 = load i32, i32* %20, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %194

192:                                              ; preds = %178
  %193 = load i32, i32* %20, align 4
  store i32 %193, i32* %8, align 4
  store i32 1, i32* %32, align 4
  br label %210

194:                                              ; preds = %178
  %195 = load i32, i32* %30, align 4
  %196 = load i32, i32* %29, align 4
  %197 = add nsw i32 %196, 1
  store i32 %197, i32* %29, align 4
  %198 = sext i32 %196 to i64
  %199 = getelementptr inbounds i32, i32* %73, i64 %198
  store i32 %195, i32* %199, align 4
  %200 = load i32, i32* @N, align 4
  %201 = sub nsw i32 %200, 1
  %202 = load i32, i32* %29, align 4
  %203 = and i32 %202, %201
  store i32 %203, i32* %29, align 4
  br label %204

204:                                              ; preds = %194
  %205 = load i32, i32* %28, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %28, align 4
  br label %174

207:                                              ; preds = %174
  br label %208

208:                                              ; preds = %207, %136
  br label %99

209:                                              ; preds = %163, %154, %128, %112
  store i32 0, i32* %8, align 4
  store i32 1, i32* %32, align 4
  br label %210

210:                                              ; preds = %209, %192, %134
  %211 = load i8*, i8** %23, align 8
  call void @llvm.stackrestore(i8* %211)
  %212 = load i32, i32* %8, align 4
  ret i32 %212
}

declare dso_local i32 @vc_clean_boot_graphics(...) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @vc_decompress_lzss_next_pixel(i32, %struct.TYPE_4__*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
