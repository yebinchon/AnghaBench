; ModuleID = '/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_convertgen.c_main.c'
source_filename = "/home/carl/AnghaBench/Provenance/Cores/FCEU/FCEU/~attic/sexyal/extr_convertgen.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [116 x i8] c"void SexiALI_Convert(SexyAL_format *srcformat, SexyAL_format *destformat, void *vdest, void *vsrc, uint32_t frames)\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"{\00", align 1
@.str.2 = private unnamed_addr constant [35 x i8] c"if(srcformat->sampformat == %s)\0A{\0A\00", align 1
@check = common dso_local global i8** null, align 8
@.str.3 = private unnamed_addr constant [15 x i8] c"%s* src=vsrc;\0A\00", align 1
@str = common dso_local global i8** null, align 8
@.str.4 = private unnamed_addr constant [36 x i8] c"if(destformat->sampformat == %s)\0A{\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"%s* dest=vdest;\0A\00", align 1
@.str.6 = private unnamed_addr constant [33 x i8] c"if(srcformat->channels == %c)\0A{\0A\00", align 1
@.str.7 = private unnamed_addr constant [34 x i8] c"if(destformat->channels == %c)\0A{\0A\00", align 1
@.str.8 = private unnamed_addr constant [34 x i8] c"if(srcformat->byteorder == %d)\0A{\0A\00", align 1
@.str.9 = private unnamed_addr constant [35 x i8] c"if(destformat->byteorder == %d)\0A{\0A\00", align 1
@.str.10 = private unnamed_addr constant [19 x i8] c"while(frames--)\0A{\0A\00", align 1
@.str.11 = private unnamed_addr constant [13 x i8] c"int32_t tmp;\00", align 1
@.str.12 = private unnamed_addr constant [14 x i8] c"int32_t tmp2;\00", align 1
@.str.13 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@bitsreal = common dso_local global i32* null, align 8
@.str.14 = private unnamed_addr constant [13 x i8] c"FLIP16(tmp);\00", align 1
@.str.15 = private unnamed_addr constant [13 x i8] c"FLIP32(tmp);\00", align 1
@.str.16 = private unnamed_addr constant [2 x i8] c"2\00", align 1
@.str.17 = private unnamed_addr constant [14 x i8] c"FLIP16(tmp2);\00", align 1
@.str.18 = private unnamed_addr constant [14 x i8] c"FLIP32(tmp2);\00", align 1
@.str.19 = private unnamed_addr constant [22 x i8] c"tmp = (tmp+tmp2)>>1;\0A\00", align 1
@.str.20 = private unnamed_addr constant [2 x i8] c"}\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %1, align 4
  %8 = call i32 @puts(i8* getelementptr inbounds ([116 x i8], [116 x i8]* @.str, i64 0, i64 0))
  %9 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %10

10:                                               ; preds = %214, %0
  %11 = load i32, i32* %2, align 4
  %12 = icmp slt i32 %11, 8
  br i1 %12, label %13, label %217

13:                                               ; preds = %10
  %14 = load i8**, i8*** @check, align 8
  %15 = load i32, i32* %2, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.2, i64 0, i64 0), i8* %18)
  %20 = load i8**, i8*** @str, align 8
  %21 = load i32, i32* %2, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i8*, i8** %20, i64 %22
  %24 = load i8*, i8** %23, align 8
  %25 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.3, i64 0, i64 0), i8* %24)
  store i32 0, i32* %3, align 4
  br label %26

26:                                               ; preds = %209, %13
  %27 = load i32, i32* %3, align 4
  %28 = icmp slt i32 %27, 8
  br i1 %28, label %29, label %212

29:                                               ; preds = %26
  %30 = load i8**, i8*** @check, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i8*, i8** %30, i64 %32
  %34 = load i8*, i8** %33, align 8
  %35 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.4, i64 0, i64 0), i8* %34)
  %36 = load i8**, i8*** @str, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %40)
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %204, %29
  %43 = load i32, i32* %4, align 4
  %44 = icmp slt i32 %43, 2
  br i1 %44, label %45, label %207

45:                                               ; preds = %42
  %46 = load i32, i32* %4, align 4
  %47 = add nsw i32 49, %46
  %48 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.6, i64 0, i64 0), i32 %47)
  store i32 0, i32* %5, align 4
  br label %49

49:                                               ; preds = %199, %45
  %50 = load i32, i32* %5, align 4
  %51 = icmp slt i32 %50, 2
  br i1 %51, label %52, label %202

52:                                               ; preds = %49
  %53 = load i32, i32* %5, align 4
  %54 = add nsw i32 49, %53
  %55 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.7, i64 0, i64 0), i32 %54)
  store i32 0, i32* %6, align 4
  br label %56

56:                                               ; preds = %194, %52
  %57 = load i32, i32* %6, align 4
  %58 = icmp slt i32 %57, 2
  br i1 %58, label %59, label %197

59:                                               ; preds = %56
  %60 = load i32, i32* %6, align 4
  %61 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.8, i64 0, i64 0), i32 %60)
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %189, %59
  %63 = load i32, i32* %7, align 4
  %64 = icmp slt i32 %63, 2
  br i1 %64, label %65, label %192

65:                                               ; preds = %62
  %66 = load i32, i32* %7, align 4
  %67 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str.9, i64 0, i64 0), i32 %66)
  %68 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.10, i64 0, i64 0))
  %69 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.11, i64 0, i64 0))
  %70 = load i32, i32* %4, align 4
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %74

72:                                               ; preds = %65
  %73 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.12, i64 0, i64 0))
  br label %74

74:                                               ; preds = %72, %65
  %75 = load i32, i32* %2, align 4
  %76 = call i32 @Fetch(i32 %75, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %77 = load i32, i32* %6, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %91

79:                                               ; preds = %74
  %80 = load i32*, i32** @bitsreal, align 8
  %81 = load i32, i32* %2, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 16
  br i1 %85, label %86, label %88

86:                                               ; preds = %79
  %87 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %90

88:                                               ; preds = %79
  %89 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %90

90:                                               ; preds = %88, %86
  br label %91

91:                                               ; preds = %90, %74
  %92 = load i32, i32* %4, align 4
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %94, label %112

94:                                               ; preds = %91
  %95 = load i32, i32* %2, align 4
  %96 = call i32 @Fetch(i32 %95, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  %97 = load i32, i32* %6, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %94
  %100 = load i32*, i32** @bitsreal, align 8
  %101 = load i32, i32* %2, align 4
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i32, i32* %100, i64 %102
  %104 = load i32, i32* %103, align 4
  %105 = icmp eq i32 %104, 16
  br i1 %105, label %106, label %108

106:                                              ; preds = %99
  %107 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %110

108:                                              ; preds = %99
  %109 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %110

110:                                              ; preds = %108, %106
  br label %111

111:                                              ; preds = %110, %94
  br label %112

112:                                              ; preds = %111, %91
  %113 = load i32, i32* %2, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @BitConv(i32 %113, i32 %114, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %116 = load i32, i32* %4, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %122

118:                                              ; preds = %112
  %119 = load i32, i32* %2, align 4
  %120 = load i32, i32* %3, align 4
  %121 = call i32 @BitConv(i32 %119, i32 %120, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %122

122:                                              ; preds = %118, %112
  %123 = load i32, i32* %7, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %125, label %158

125:                                              ; preds = %122
  %126 = load i32*, i32** @bitsreal, align 8
  %127 = load i32, i32* %2, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds i32, i32* %126, i64 %128
  %130 = load i32, i32* %129, align 4
  %131 = icmp eq i32 %130, 16
  br i1 %131, label %132, label %134

132:                                              ; preds = %125
  %133 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.14, i64 0, i64 0))
  br label %136

134:                                              ; preds = %125
  %135 = call i32 @puts(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.15, i64 0, i64 0))
  br label %136

136:                                              ; preds = %134, %132
  %137 = load i32, i32* %4, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %157

139:                                              ; preds = %136
  %140 = load i32, i32* %5, align 4
  %141 = icmp ne i32 %140, 0
  br i1 %141, label %142, label %157

142:                                              ; preds = %139
  %143 = load i32, i32* %7, align 4
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %145, label %157

145:                                              ; preds = %142
  %146 = load i32*, i32** @bitsreal, align 8
  %147 = load i32, i32* %2, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds i32, i32* %146, i64 %148
  %150 = load i32, i32* %149, align 4
  %151 = icmp eq i32 %150, 16
  br i1 %151, label %152, label %154

152:                                              ; preds = %145
  %153 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.17, i64 0, i64 0))
  br label %156

154:                                              ; preds = %145
  %155 = call i32 @puts(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.18, i64 0, i64 0))
  br label %156

156:                                              ; preds = %154, %152
  br label %157

157:                                              ; preds = %156, %142, %139, %136
  br label %158

158:                                              ; preds = %157, %122
  %159 = load i32, i32* %4, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %161, label %166

161:                                              ; preds = %158
  %162 = load i32, i32* %5, align 4
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %166, label %164

164:                                              ; preds = %161
  %165 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.19, i64 0, i64 0))
  br label %166

166:                                              ; preds = %164, %161, %158
  %167 = load i32, i32* %3, align 4
  %168 = call i32 @Save(i32 %167, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  %169 = load i32, i32* %4, align 4
  %170 = icmp ne i32 %169, 0
  br i1 %170, label %177, label %171

171:                                              ; preds = %166
  %172 = load i32, i32* %5, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %177

174:                                              ; preds = %171
  %175 = load i32, i32* %3, align 4
  %176 = call i32 @Save(i32 %175, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.13, i64 0, i64 0))
  br label %177

177:                                              ; preds = %174, %171, %166
  %178 = load i32, i32* %4, align 4
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %180, label %186

180:                                              ; preds = %177
  %181 = load i32, i32* %5, align 4
  %182 = icmp ne i32 %181, 0
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32, i32* %3, align 4
  %185 = call i32 @Save(i32 %184, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.16, i64 0, i64 0))
  br label %186

186:                                              ; preds = %183, %180, %177
  %187 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %188 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %189

189:                                              ; preds = %186
  %190 = load i32, i32* %7, align 4
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %7, align 4
  br label %62

192:                                              ; preds = %62
  %193 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %194

194:                                              ; preds = %192
  %195 = load i32, i32* %6, align 4
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %6, align 4
  br label %56

197:                                              ; preds = %56
  %198 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %199

199:                                              ; preds = %197
  %200 = load i32, i32* %5, align 4
  %201 = add nsw i32 %200, 1
  store i32 %201, i32* %5, align 4
  br label %49

202:                                              ; preds = %49
  %203 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %204

204:                                              ; preds = %202
  %205 = load i32, i32* %4, align 4
  %206 = add nsw i32 %205, 1
  store i32 %206, i32* %4, align 4
  br label %42

207:                                              ; preds = %42
  %208 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %209

209:                                              ; preds = %207
  %210 = load i32, i32* %3, align 4
  %211 = add nsw i32 %210, 1
  store i32 %211, i32* %3, align 4
  br label %26

212:                                              ; preds = %26
  %213 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  br label %214

214:                                              ; preds = %212
  %215 = load i32, i32* %2, align 4
  %216 = add nsw i32 %215, 1
  store i32 %216, i32* %2, align 4
  br label %10

217:                                              ; preds = %10
  %218 = call i32 @puts(i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.20, i64 0, i64 0))
  %219 = load i32, i32* %1, align 4
  ret i32 %219
}

declare dso_local i32 @puts(i8*) #1

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @Fetch(i32, i8*) #1

declare dso_local i32 @BitConv(i32, i32, i8*) #1

declare dso_local i32 @Save(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
