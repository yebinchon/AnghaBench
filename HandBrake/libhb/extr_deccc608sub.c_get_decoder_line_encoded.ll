; ModuleID = '/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_get_decoder_line_encoded.c'
source_filename = "/home/carl/AnghaBench/HandBrake/libhb/extr_deccc608sub.c_get_decoder_line_encoded.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.s_write = type { i32, i32 }
%struct.eia608_screen = type { i8**, i32**, i32** }

@FONT_STYLE_MASK = common dso_local global i32 0, align 4
@COL_WHITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"{\\r}\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@FONT_UNDERLINED = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"\\u\00", align 1
@FONT_ITALICS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [3 x i8] c"\\i\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"\\1c\00", align 1
@color_text = common dso_local global i64** null, align 8
@.str.5 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.s_write*, i8*, i32, %struct.eia608_screen*)* @get_decoder_line_encoded to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_decoder_line_encoded(%struct.s_write* %0, i8* %1, i32 %2, %struct.eia608_screen* %3) #0 {
  %5 = alloca %struct.s_write*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.eia608_screen*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.s_write* %0, %struct.s_write** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.eia608_screen* %3, %struct.eia608_screen** %8, align 8
  %19 = load %struct.eia608_screen*, %struct.eia608_screen** %8, align 8
  %20 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %19, i32 0, i32 0
  %21 = load i8**, i8*** %20, align 8
  %22 = load i32, i32* %7, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds i8*, i8** %21, i64 %23
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %6, align 8
  store i8* %26, i8** %13, align 8
  store i32 0, i32* %14, align 4
  store i32 31, i32* %15, align 4
  %27 = load i8*, i8** %12, align 8
  %28 = call i32 @find_limit_characters(i8* %27, i32* %14, i32* %15)
  %29 = load i32, i32* %14, align 4
  store i32 %29, i32* %11, align 4
  br label %30

30:                                               ; preds = %227, %4
  %31 = load i32, i32* %11, align 4
  %32 = load i32, i32* %15, align 4
  %33 = icmp sle i32 %31, %32
  br i1 %33, label %34, label %230

34:                                               ; preds = %30
  %35 = load %struct.eia608_screen*, %struct.eia608_screen** %8, align 8
  %36 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %35, i32 0, i32 1
  %37 = load i32**, i32*** %36, align 8
  %38 = load i32, i32* %7, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds i32*, i32** %37, i64 %39
  %41 = load i32*, i32** %40, align 8
  %42 = load i32, i32* %11, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i32, i32* %41, i64 %43
  %45 = load i32, i32* %44, align 4
  store i32 %45, i32* %10, align 4
  %46 = load %struct.eia608_screen*, %struct.eia608_screen** %8, align 8
  %47 = getelementptr inbounds %struct.eia608_screen, %struct.eia608_screen* %46, i32 0, i32 2
  %48 = load i32**, i32*** %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i32*, i32** %48, i64 %50
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %11, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* @FONT_STYLE_MASK, align 4
  %59 = and i32 %57, %58
  %60 = icmp eq i32 %59, 0
  br i1 %60, label %61, label %87

61:                                               ; preds = %34
  %62 = load i32, i32* %10, align 4
  %63 = load i32, i32* @COL_WHITE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %87

65:                                               ; preds = %61
  %66 = load i32, i32* %9, align 4
  %67 = load %struct.s_write*, %struct.s_write** %5, align 8
  %68 = getelementptr inbounds %struct.s_write, %struct.s_write* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = xor i32 %66, %69
  %71 = load i32, i32* @FONT_STYLE_MASK, align 4
  %72 = and i32 %70, %71
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %80, label %74

74:                                               ; preds = %65
  %75 = load i32, i32* %10, align 4
  %76 = load %struct.s_write*, %struct.s_write** %5, align 8
  %77 = getelementptr inbounds %struct.s_write, %struct.s_write* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %75, %78
  br i1 %79, label %80, label %86

80:                                               ; preds = %74, %65
  %81 = load i8*, i8** %6, align 8
  %82 = call i32 @encode_line(i8* %81, i32* bitcast ([5 x i8]* @.str to i32*))
  %83 = load i8*, i8** %6, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %6, align 8
  br label %86

86:                                               ; preds = %80, %74
  br label %209

87:                                               ; preds = %61, %34
  %88 = load i32, i32* %9, align 4
  %89 = load %struct.s_write*, %struct.s_write** %5, align 8
  %90 = getelementptr inbounds %struct.s_write, %struct.s_write* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = xor i32 %88, %91
  %93 = load i32, i32* @FONT_STYLE_MASK, align 4
  %94 = and i32 %92, %93
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %102, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %10, align 4
  %98 = load %struct.s_write*, %struct.s_write** %5, align 8
  %99 = getelementptr inbounds %struct.s_write, %struct.s_write* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = icmp ne i32 %97, %100
  br i1 %101, label %102, label %108

102:                                              ; preds = %96, %87
  %103 = load i8*, i8** %6, align 8
  %104 = call i32 @encode_line(i8* %103, i32* bitcast ([2 x i8]* @.str.1 to i32*))
  %105 = load i8*, i8** %6, align 8
  %106 = sext i32 %104 to i64
  %107 = getelementptr inbounds i8, i8* %105, i64 %106
  store i8* %107, i8** %6, align 8
  br label %108

108:                                              ; preds = %102, %96
  %109 = load i32, i32* %9, align 4
  %110 = load %struct.s_write*, %struct.s_write** %5, align 8
  %111 = getelementptr inbounds %struct.s_write, %struct.s_write* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = xor i32 %109, %112
  %114 = load i32, i32* @FONT_UNDERLINED, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %135

117:                                              ; preds = %108
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* @FONT_UNDERLINED, align 4
  %120 = and i32 %118, %119
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = xor i1 %122, true
  %124 = zext i1 %123 to i32
  store i32 %124, i32* %16, align 4
  %125 = load i8*, i8** %6, align 8
  %126 = call i32 @encode_line(i8* %125, i32* bitcast ([3 x i8]* @.str.2 to i32*))
  %127 = load i8*, i8** %6, align 8
  %128 = sext i32 %126 to i64
  %129 = getelementptr inbounds i8, i8* %127, i64 %128
  store i8* %129, i8** %6, align 8
  %130 = load i32, i32* %16, align 4
  %131 = add nsw i32 %130, 48
  %132 = trunc i32 %131 to i8
  %133 = load i8*, i8** %6, align 8
  %134 = getelementptr inbounds i8, i8* %133, i32 1
  store i8* %134, i8** %6, align 8
  store i8 %132, i8* %133, align 1
  br label %135

135:                                              ; preds = %117, %108
  %136 = load i32, i32* %9, align 4
  %137 = load %struct.s_write*, %struct.s_write** %5, align 8
  %138 = getelementptr inbounds %struct.s_write, %struct.s_write* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 4
  %140 = xor i32 %136, %139
  %141 = load i32, i32* @FONT_ITALICS, align 4
  %142 = and i32 %140, %141
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %144, label %162

144:                                              ; preds = %135
  %145 = load i32, i32* %9, align 4
  %146 = load i32, i32* @FONT_ITALICS, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  %149 = xor i1 %148, true
  %150 = xor i1 %149, true
  %151 = zext i1 %150 to i32
  store i32 %151, i32* %17, align 4
  %152 = load i8*, i8** %6, align 8
  %153 = call i32 @encode_line(i8* %152, i32* bitcast ([3 x i8]* @.str.3 to i32*))
  %154 = load i8*, i8** %6, align 8
  %155 = sext i32 %153 to i64
  %156 = getelementptr inbounds i8, i8* %154, i64 %155
  store i8* %156, i8** %6, align 8
  %157 = load i32, i32* %17, align 4
  %158 = add nsw i32 %157, 48
  %159 = trunc i32 %158 to i8
  %160 = load i8*, i8** %6, align 8
  %161 = getelementptr inbounds i8, i8* %160, i32 1
  store i8* %161, i8** %6, align 8
  store i8 %159, i8* %160, align 1
  br label %162

162:                                              ; preds = %144, %135
  %163 = load i32, i32* %10, align 4
  %164 = load %struct.s_write*, %struct.s_write** %5, align 8
  %165 = getelementptr inbounds %struct.s_write, %struct.s_write* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 4
  %167 = icmp ne i32 %163, %166
  br i1 %167, label %168, label %187

168:                                              ; preds = %162
  %169 = load i8*, i8** %6, align 8
  %170 = call i32 @encode_line(i8* %169, i32* bitcast ([4 x i8]* @.str.4 to i32*))
  %171 = load i8*, i8** %6, align 8
  %172 = sext i32 %170 to i64
  %173 = getelementptr inbounds i8, i8* %171, i64 %172
  store i8* %173, i8** %6, align 8
  %174 = load i8*, i8** %6, align 8
  %175 = load i64**, i64*** @color_text, align 8
  %176 = load i32, i32* %10, align 4
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds i64*, i64** %175, i64 %177
  %179 = load i64*, i64** %178, align 8
  %180 = getelementptr inbounds i64, i64* %179, i64 1
  %181 = load i64, i64* %180, align 8
  %182 = inttoptr i64 %181 to i32*
  %183 = call i32 @encode_line(i8* %174, i32* %182)
  %184 = load i8*, i8** %6, align 8
  %185 = sext i32 %183 to i64
  %186 = getelementptr inbounds i8, i8* %184, i64 %185
  store i8* %186, i8** %6, align 8
  br label %187

187:                                              ; preds = %168, %162
  %188 = load i32, i32* %9, align 4
  %189 = load %struct.s_write*, %struct.s_write** %5, align 8
  %190 = getelementptr inbounds %struct.s_write, %struct.s_write* %189, i32 0, i32 0
  %191 = load i32, i32* %190, align 4
  %192 = xor i32 %188, %191
  %193 = load i32, i32* @FONT_STYLE_MASK, align 4
  %194 = and i32 %192, %193
  %195 = icmp ne i32 %194, 0
  br i1 %195, label %202, label %196

196:                                              ; preds = %187
  %197 = load i32, i32* %10, align 4
  %198 = load %struct.s_write*, %struct.s_write** %5, align 8
  %199 = getelementptr inbounds %struct.s_write, %struct.s_write* %198, i32 0, i32 1
  %200 = load i32, i32* %199, align 4
  %201 = icmp ne i32 %197, %200
  br i1 %201, label %202, label %208

202:                                              ; preds = %196, %187
  %203 = load i8*, i8** %6, align 8
  %204 = call i32 @encode_line(i8* %203, i32* bitcast ([2 x i8]* @.str.5 to i32*))
  %205 = load i8*, i8** %6, align 8
  %206 = sext i32 %204 to i64
  %207 = getelementptr inbounds i8, i8* %205, i64 %206
  store i8* %207, i8** %6, align 8
  br label %208

208:                                              ; preds = %202, %196
  br label %209

209:                                              ; preds = %208, %86
  %210 = load i32, i32* %9, align 4
  %211 = load %struct.s_write*, %struct.s_write** %5, align 8
  %212 = getelementptr inbounds %struct.s_write, %struct.s_write* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 4
  %213 = load i32, i32* %10, align 4
  %214 = load %struct.s_write*, %struct.s_write** %5, align 8
  %215 = getelementptr inbounds %struct.s_write, %struct.s_write* %214, i32 0, i32 1
  store i32 %213, i32* %215, align 4
  store i32 0, i32* %18, align 4
  %216 = load i8*, i8** %6, align 8
  %217 = load i8*, i8** %12, align 8
  %218 = load i32, i32* %11, align 4
  %219 = sext i32 %218 to i64
  %220 = getelementptr inbounds i8, i8* %217, i64 %219
  %221 = load i8, i8* %220, align 1
  %222 = call i32 @get_char_in_utf8(i8* %216, i8 zeroext %221)
  store i32 %222, i32* %18, align 4
  %223 = load i32, i32* %18, align 4
  %224 = load i8*, i8** %6, align 8
  %225 = sext i32 %223 to i64
  %226 = getelementptr inbounds i8, i8* %224, i64 %225
  store i8* %226, i8** %6, align 8
  br label %227

227:                                              ; preds = %209
  %228 = load i32, i32* %11, align 4
  %229 = add nsw i32 %228, 1
  store i32 %229, i32* %11, align 4
  br label %30

230:                                              ; preds = %30
  %231 = load i8*, i8** %6, align 8
  store i8 0, i8* %231, align 1
  %232 = load i8*, i8** %6, align 8
  %233 = load i8*, i8** %13, align 8
  %234 = ptrtoint i8* %232 to i64
  %235 = ptrtoint i8* %233 to i64
  %236 = sub i64 %234, %235
  %237 = trunc i64 %236 to i32
  ret i32 %237
}

declare dso_local i32 @find_limit_characters(i8*, i32*, i32*) #1

declare dso_local i32 @encode_line(i8*, i32*) #1

declare dso_local i32 @get_char_in_utf8(i8*, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
