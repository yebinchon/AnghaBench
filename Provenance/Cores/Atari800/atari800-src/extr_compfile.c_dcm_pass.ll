; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_compfile.c_dcm_pass.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/Atari800/atari800-src/extr_compfile.c_dcm_pass.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"Error: current sector is %d, next sector group at %d\00", align 1
@FALSE = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"Unrecognized sector coding type 0x%02X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.TYPE_5__*)* @dcm_pass to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dcm_pass(i32* %0, %struct.TYPE_5__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.TYPE_5__*, align 8
  %6 = alloca [256 x i32], align 16
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.TYPE_5__* %1, %struct.TYPE_5__** %5, align 8
  %13 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %14 = call i32 @memset(i32* %13, i32 0, i32 1024)
  br label %15

15:                                               ; preds = %228, %2
  %16 = load i32*, i32** %4, align 8
  %17 = call i32 @fgetw(i32* %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32*, i32** %4, align 8
  %19 = call i32 @fgetc(i32* %18)
  store i32 %19, i32* %8, align 4
  %20 = load i32, i32* %8, align 4
  %21 = icmp eq i32 %20, 69
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i32, i32* @TRUE, align 4
  store i32 %23, i32* %3, align 4
  br label %229

24:                                               ; preds = %15
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = icmp slt i32 %25, %28
  br i1 %29, label %30, label %37

30:                                               ; preds = %24
  %31 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %7, align 4
  %35 = call i32 (i8*, i32, ...) @Log_print(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %33, i32 %34)
  %36 = load i32, i32* @FALSE, align 4
  store i32 %36, i32* %3, align 4
  br label %229

37:                                               ; preds = %24
  %38 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @pad_till_sector(%struct.TYPE_5__* %38, i32 %39)
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %44, label %42

42:                                               ; preds = %37
  %43 = load i32, i32* @FALSE, align 4
  store i32 %43, i32* %3, align 4
  br label %229

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %227, %44
  %46 = load i32, i32* %8, align 4
  %47 = and i32 %46, 127
  switch i32 %47, label %204 [
    i32 65, label %48
    i32 66, label %75
    i32 67, label %88
    i32 68, label %162
    i32 70, label %192
    i32 71, label %193
  ]

48:                                               ; preds = %45
  %49 = load i32*, i32** %4, align 8
  %50 = call i32 @fgetc(i32* %49)
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = load i32, i32* @EOF, align 4
  %53 = icmp eq i32 %51, %52
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @FALSE, align 4
  store i32 %55, i32* %3, align 4
  br label %229

56:                                               ; preds = %48
  br label %57

57:                                               ; preds = %70, %56
  %58 = load i32*, i32** %4, align 8
  %59 = call i32 @fgetc(i32* %58)
  store i32 %59, i32* %10, align 4
  %60 = load i32, i32* %10, align 4
  %61 = load i32, i32* @EOF, align 4
  %62 = icmp eq i32 %60, %61
  br i1 %62, label %63, label %65

63:                                               ; preds = %57
  %64 = load i32, i32* @FALSE, align 4
  store i32 %64, i32* %3, align 4
  br label %229

65:                                               ; preds = %57
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %9, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 %68
  store i32 %66, i32* %69, align 4
  br label %70

70:                                               ; preds = %65
  %71 = load i32, i32* %9, align 4
  %72 = add nsw i32 %71, -1
  store i32 %72, i32* %9, align 4
  %73 = icmp ne i32 %71, 0
  br i1 %73, label %57, label %74

74:                                               ; preds = %70
  br label %208

75:                                               ; preds = %45
  %76 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %77 = getelementptr inbounds i32, i32* %76, i64 123
  %78 = load i32*, i32** %4, align 8
  %79 = call i32 @fload(i32* %77, i32 5, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %83, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @FALSE, align 4
  store i32 %82, i32* %3, align 4
  br label %229

83:                                               ; preds = %75
  %84 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %85 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 123
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @memset(i32* %84, i32 %86, i32 123)
  br label %208

88:                                               ; preds = %45
  store i32 0, i32* %9, align 4
  br label %89

89:                                               ; preds = %155, %88
  %90 = load i32*, i32** %4, align 8
  %91 = call i32 @fgetc(i32* %90)
  store i32 %91, i32* %11, align 4
  %92 = load i32, i32* %11, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp slt i32 %92, %93
  br i1 %94, label %95, label %101

95:                                               ; preds = %89
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %100

98:                                               ; preds = %95
  %99 = load i32, i32* @FALSE, align 4
  store i32 %99, i32* %3, align 4
  br label %229

100:                                              ; preds = %95
  store i32 256, i32* %11, align 4
  br label %101

101:                                              ; preds = %100, %89
  %102 = load i32, i32* %9, align 4
  %103 = load i32, i32* %11, align 4
  %104 = icmp slt i32 %102, %103
  br i1 %104, label %105, label %118

105:                                              ; preds = %101
  %106 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %107 = load i32, i32* %9, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds i32, i32* %106, i64 %108
  %110 = load i32, i32* %11, align 4
  %111 = load i32, i32* %9, align 4
  %112 = sub nsw i32 %110, %111
  %113 = load i32*, i32** %4, align 8
  %114 = call i32 @fload(i32* %109, i32 %112, i32* %113)
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %118, label %116

116:                                              ; preds = %105
  %117 = load i32, i32* @FALSE, align 4
  store i32 %117, i32* %3, align 4
  br label %229

118:                                              ; preds = %105, %101
  %119 = load i32, i32* %11, align 4
  %120 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = icmp sge i32 %119, %122
  br i1 %123, label %124, label %125

124:                                              ; preds = %118
  br label %161

125:                                              ; preds = %118
  %126 = load i32*, i32** %4, align 8
  %127 = call i32 @fgetc(i32* %126)
  store i32 %127, i32* %9, align 4
  %128 = load i32, i32* %9, align 4
  %129 = load i32, i32* %11, align 4
  %130 = icmp slt i32 %128, %129
  br i1 %130, label %131, label %137

131:                                              ; preds = %125
  %132 = load i32, i32* %9, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %136

134:                                              ; preds = %131
  %135 = load i32, i32* @FALSE, align 4
  store i32 %135, i32* %3, align 4
  br label %229

136:                                              ; preds = %131
  store i32 256, i32* %9, align 4
  br label %137

137:                                              ; preds = %136, %125
  %138 = load i32*, i32** %4, align 8
  %139 = call i32 @fgetc(i32* %138)
  store i32 %139, i32* %12, align 4
  %140 = load i32, i32* %12, align 4
  %141 = load i32, i32* @EOF, align 4
  %142 = icmp eq i32 %140, %141
  br i1 %142, label %143, label %145

143:                                              ; preds = %137
  %144 = load i32, i32* @FALSE, align 4
  store i32 %144, i32* %3, align 4
  br label %229

145:                                              ; preds = %137
  %146 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %147 = load i32, i32* %11, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %12, align 4
  %151 = load i32, i32* %9, align 4
  %152 = load i32, i32* %11, align 4
  %153 = sub nsw i32 %151, %152
  %154 = call i32 @memset(i32* %149, i32 %150, i32 %153)
  br label %155

155:                                              ; preds = %145
  %156 = load i32, i32* %9, align 4
  %157 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %158 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %157, i32 0, i32 1
  %159 = load i32, i32* %158, align 4
  %160 = icmp slt i32 %156, %159
  br i1 %160, label %89, label %161

161:                                              ; preds = %155, %124
  br label %208

162:                                              ; preds = %45
  %163 = load i32*, i32** %4, align 8
  %164 = call i32 @fgetc(i32* %163)
  store i32 %164, i32* %9, align 4
  %165 = load i32, i32* %9, align 4
  %166 = load i32, i32* @EOF, align 4
  %167 = icmp eq i32 %165, %166
  br i1 %167, label %174, label %168

168:                                              ; preds = %162
  %169 = load i32, i32* %9, align 4
  %170 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %171 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %170, i32 0, i32 1
  %172 = load i32, i32* %171, align 4
  %173 = icmp sge i32 %169, %172
  br i1 %173, label %174, label %176

174:                                              ; preds = %168, %162
  %175 = load i32, i32* @FALSE, align 4
  store i32 %175, i32* %3, align 4
  br label %229

176:                                              ; preds = %168
  %177 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %178 = load i32, i32* %9, align 4
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %177, i64 %179
  %181 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %182 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %181, i32 0, i32 1
  %183 = load i32, i32* %182, align 4
  %184 = load i32, i32* %9, align 4
  %185 = sub nsw i32 %183, %184
  %186 = load i32*, i32** %4, align 8
  %187 = call i32 @fload(i32* %180, i32 %185, i32* %186)
  %188 = icmp ne i32 %187, 0
  br i1 %188, label %191, label %189

189:                                              ; preds = %176
  %190 = load i32, i32* @FALSE, align 4
  store i32 %190, i32* %3, align 4
  br label %229

191:                                              ; preds = %176
  br label %208

192:                                              ; preds = %45
  br label %208

193:                                              ; preds = %45
  %194 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %195 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %196 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %195, i32 0, i32 1
  %197 = load i32, i32* %196, align 4
  %198 = load i32*, i32** %4, align 8
  %199 = call i32 @fload(i32* %194, i32 %197, i32* %198)
  %200 = icmp ne i32 %199, 0
  br i1 %200, label %203, label %201

201:                                              ; preds = %193
  %202 = load i32, i32* @FALSE, align 4
  store i32 %202, i32* %3, align 4
  br label %229

203:                                              ; preds = %193
  br label %208

204:                                              ; preds = %45
  %205 = load i32, i32* %8, align 4
  %206 = call i32 (i8*, i32, ...) @Log_print(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %205)
  %207 = load i32, i32* @FALSE, align 4
  store i32 %207, i32* %3, align 4
  br label %229

208:                                              ; preds = %203, %192, %191, %161, %83, %74
  %209 = load %struct.TYPE_5__*, %struct.TYPE_5__** %5, align 8
  %210 = getelementptr inbounds [256 x i32], [256 x i32]* %6, i64 0, i64 0
  %211 = call i32 @write_atr_sector(%struct.TYPE_5__* %209, i32* %210)
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %215, label %213

213:                                              ; preds = %208
  %214 = load i32, i32* @FALSE, align 4
  store i32 %214, i32* %3, align 4
  br label %229

215:                                              ; preds = %208
  %216 = load i32, i32* %8, align 4
  %217 = and i32 %216, 128
  %218 = icmp ne i32 %217, 0
  br i1 %218, label %220, label %219

219:                                              ; preds = %215
  br label %228

220:                                              ; preds = %215
  %221 = load i32*, i32** %4, align 8
  %222 = call i32 @fgetc(i32* %221)
  store i32 %222, i32* %8, align 4
  %223 = load i32, i32* %8, align 4
  %224 = icmp eq i32 %223, 69
  br i1 %224, label %225, label %227

225:                                              ; preds = %220
  %226 = load i32, i32* @TRUE, align 4
  store i32 %226, i32* %3, align 4
  br label %229

227:                                              ; preds = %220
  br label %45

228:                                              ; preds = %219
  br label %15

229:                                              ; preds = %225, %213, %204, %201, %189, %174, %143, %134, %116, %98, %81, %63, %54, %42, %30, %22
  %230 = load i32, i32* %3, align 4
  ret i32 %230
}

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @fgetw(i32*) #1

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @Log_print(i8*, i32, ...) #1

declare dso_local i32 @pad_till_sector(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @fload(i32*, i32, i32*) #1

declare dso_local i32 @write_atr_sector(%struct.TYPE_5__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
