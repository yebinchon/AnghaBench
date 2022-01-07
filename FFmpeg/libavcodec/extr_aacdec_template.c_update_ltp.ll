; ModuleID = '/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_update_ltp.c'
source_filename = "/home/carl/AnghaBench/FFmpeg/libavcodec/extr_aacdec_template.c_update_ltp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32*, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 (i32*, i32*, i32*, i32)* }
%struct.TYPE_8__ = type { i32*, i32*, i32*, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64*, i64* }

@ff_aac_kbd_long_1024 = common dso_local global i32 0, align 4
@ff_sine_1024 = common dso_local global i32 0, align 4
@ff_aac_kbd_short_128 = common dso_local global i32 0, align 4
@ff_sine_128 = common dso_local global i32 0, align 4
@EIGHT_SHORT_SEQUENCE = common dso_local global i64 0, align 8
@LONG_START_SEQUENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_10__*, %struct.TYPE_8__*)* @update_ltp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_ltp(%struct.TYPE_10__* %0, %struct.TYPE_8__* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.TYPE_8__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.TYPE_8__* %1, %struct.TYPE_8__** %4, align 8
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 4
  store %struct.TYPE_9__* %12, %struct.TYPE_9__** %5, align 8
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 3
  %15 = load i32*, i32** %14, align 8
  store i32* %15, i32** %6, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  store i32* %18, i32** %7, align 8
  %19 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %19, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = getelementptr inbounds i64, i64* %21, i64 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* @ff_aac_kbd_long_1024, align 4
  %27 = call i32* @AAC_RENAME(i32 %26)
  br label %31

28:                                               ; preds = %2
  %29 = load i32, i32* @ff_sine_1024, align 4
  %30 = call i32* @AAC_RENAME(i32 %29)
  br label %31

31:                                               ; preds = %28, %25
  %32 = phi i32* [ %27, %25 ], [ %30, %28 ]
  store i32* %32, i32** %8, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 1
  %35 = load i64*, i64** %34, align 8
  %36 = getelementptr inbounds i64, i64* %35, i64 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ff_aac_kbd_short_128, align 4
  %41 = call i32* @AAC_RENAME(i32 %40)
  br label %45

42:                                               ; preds = %31
  %43 = load i32, i32* @ff_sine_128, align 4
  %44 = call i32* @AAC_RENAME(i32 %43)
  br label %45

45:                                               ; preds = %42, %39
  %46 = phi i32* [ %41, %39 ], [ %44, %42 ]
  store i32* %46, i32** %9, align 8
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @EIGHT_SHORT_SEQUENCE, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %103

54:                                               ; preds = %45
  %55 = load i32*, i32** %7, align 8
  %56 = load i32*, i32** %6, align 8
  %57 = call i32 @memcpy(i32* %55, i32* %56, i32 2048)
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 576
  %60 = call i32 @memset(i32* %59, i32 0, i32 1792)
  %61 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %62 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %61, i32 0, i32 1
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %64, align 8
  %66 = load i32*, i32** %7, align 8
  %67 = getelementptr inbounds i32, i32* %66, i64 448
  %68 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i32*, i32** %69, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 960
  %72 = load i32*, i32** %9, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 64
  %74 = call i32 %65(i32* %67, i32* %71, i32* %73, i32 64)
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %99, %54
  %76 = load i32, i32* %10, align 4
  %77 = icmp slt i32 %76, 64
  br i1 %77, label %78, label %102

78:                                               ; preds = %75
  %79 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %80 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* %10, align 4
  %83 = sub nsw i32 1023, %82
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32, i32* %81, i64 %84
  %86 = load i32, i32* %85, align 4
  %87 = load i32*, i32** %9, align 8
  %88 = load i32, i32* %10, align 4
  %89 = sub nsw i32 63, %88
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @AAC_MUL31(i32 %86, i32 %92)
  %94 = load i32*, i32** %7, align 8
  %95 = load i32, i32* %10, align 4
  %96 = add nsw i32 %95, 512
  %97 = sext i32 %96 to i64
  %98 = getelementptr inbounds i32, i32* %94, i64 %97
  store i32 %93, i32* %98, align 4
  br label %99

99:                                               ; preds = %78
  %100 = load i32, i32* %10, align 4
  %101 = add nsw i32 %100, 1
  store i32 %101, i32* %10, align 4
  br label %75

102:                                              ; preds = %75
  br label %206

103:                                              ; preds = %45
  %104 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %104, i32 0, i32 0
  %106 = load i64*, i64** %105, align 8
  %107 = getelementptr inbounds i64, i64* %106, i64 0
  %108 = load i64, i64* %107, align 8
  %109 = load i64, i64* @LONG_START_SEQUENCE, align 8
  %110 = icmp eq i64 %108, %109
  br i1 %110, label %111, label %163

111:                                              ; preds = %103
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %114 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %113, i32 0, i32 0
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 512
  %117 = call i32 @memcpy(i32* %112, i32* %116, i32 1792)
  %118 = load i32*, i32** %7, align 8
  %119 = getelementptr inbounds i32, i32* %118, i64 576
  %120 = call i32 @memset(i32* %119, i32 0, i32 1792)
  %121 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %123, i32 0, i32 0
  %125 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %124, align 8
  %126 = load i32*, i32** %7, align 8
  %127 = getelementptr inbounds i32, i32* %126, i64 448
  %128 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %129 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %128, i32 0, i32 0
  %130 = load i32*, i32** %129, align 8
  %131 = getelementptr inbounds i32, i32* %130, i64 960
  %132 = load i32*, i32** %9, align 8
  %133 = getelementptr inbounds i32, i32* %132, i64 64
  %134 = call i32 %125(i32* %127, i32* %131, i32* %133, i32 64)
  store i32 0, i32* %10, align 4
  br label %135

135:                                              ; preds = %159, %111
  %136 = load i32, i32* %10, align 4
  %137 = icmp slt i32 %136, 64
  br i1 %137, label %138, label %162

138:                                              ; preds = %135
  %139 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %140 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %139, i32 0, i32 0
  %141 = load i32*, i32** %140, align 8
  %142 = load i32, i32* %10, align 4
  %143 = sub nsw i32 1023, %142
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds i32, i32* %141, i64 %144
  %146 = load i32, i32* %145, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i32, i32* %10, align 4
  %149 = sub nsw i32 63, %148
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %147, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = call i32 @AAC_MUL31(i32 %146, i32 %152)
  %154 = load i32*, i32** %7, align 8
  %155 = load i32, i32* %10, align 4
  %156 = add nsw i32 %155, 512
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds i32, i32* %154, i64 %157
  store i32 %153, i32* %158, align 4
  br label %159

159:                                              ; preds = %138
  %160 = load i32, i32* %10, align 4
  %161 = add nsw i32 %160, 1
  store i32 %161, i32* %10, align 4
  br label %135

162:                                              ; preds = %135
  br label %205

163:                                              ; preds = %103
  %164 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %165 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %164, i32 0, i32 1
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 0
  %168 = load i32 (i32*, i32*, i32*, i32)*, i32 (i32*, i32*, i32*, i32)** %167, align 8
  %169 = load i32*, i32** %7, align 8
  %170 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %171 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %170, i32 0, i32 0
  %172 = load i32*, i32** %171, align 8
  %173 = getelementptr inbounds i32, i32* %172, i64 512
  %174 = load i32*, i32** %8, align 8
  %175 = getelementptr inbounds i32, i32* %174, i64 512
  %176 = call i32 %168(i32* %169, i32* %173, i32* %175, i32 512)
  store i32 0, i32* %10, align 4
  br label %177

177:                                              ; preds = %201, %163
  %178 = load i32, i32* %10, align 4
  %179 = icmp slt i32 %178, 512
  br i1 %179, label %180, label %204

180:                                              ; preds = %177
  %181 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %182 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %181, i32 0, i32 0
  %183 = load i32*, i32** %182, align 8
  %184 = load i32, i32* %10, align 4
  %185 = sub nsw i32 1023, %184
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds i32, i32* %183, i64 %186
  %188 = load i32, i32* %187, align 4
  %189 = load i32*, i32** %8, align 8
  %190 = load i32, i32* %10, align 4
  %191 = sub nsw i32 511, %190
  %192 = sext i32 %191 to i64
  %193 = getelementptr inbounds i32, i32* %189, i64 %192
  %194 = load i32, i32* %193, align 4
  %195 = call i32 @AAC_MUL31(i32 %188, i32 %194)
  %196 = load i32*, i32** %7, align 8
  %197 = load i32, i32* %10, align 4
  %198 = add nsw i32 %197, 512
  %199 = sext i32 %198 to i64
  %200 = getelementptr inbounds i32, i32* %196, i64 %199
  store i32 %195, i32* %200, align 4
  br label %201

201:                                              ; preds = %180
  %202 = load i32, i32* %10, align 4
  %203 = add nsw i32 %202, 1
  store i32 %203, i32* %10, align 4
  br label %177

204:                                              ; preds = %177
  br label %205

205:                                              ; preds = %204, %162
  br label %206

206:                                              ; preds = %205, %102
  %207 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %208 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %207, i32 0, i32 0
  %209 = load i32*, i32** %208, align 8
  %210 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %211 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %210, i32 0, i32 0
  %212 = load i32*, i32** %211, align 8
  %213 = getelementptr inbounds i32, i32* %212, i64 1024
  %214 = call i32 @memcpy(i32* %209, i32* %213, i32 4096)
  %215 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %216 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %215, i32 0, i32 0
  %217 = load i32*, i32** %216, align 8
  %218 = getelementptr inbounds i32, i32* %217, i64 1024
  %219 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %220 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %219, i32 0, i32 1
  %221 = load i32*, i32** %220, align 8
  %222 = call i32 @memcpy(i32* %218, i32* %221, i32 4096)
  %223 = load %struct.TYPE_8__*, %struct.TYPE_8__** %4, align 8
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 0
  %225 = load i32*, i32** %224, align 8
  %226 = getelementptr inbounds i32, i32* %225, i64 2048
  %227 = load i32*, i32** %7, align 8
  %228 = call i32 @memcpy(i32* %226, i32* %227, i32 4096)
  ret void
}

declare dso_local i32* @AAC_RENAME(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @AAC_MUL31(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
