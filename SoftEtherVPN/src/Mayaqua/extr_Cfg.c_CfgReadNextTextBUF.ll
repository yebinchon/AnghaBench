; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgReadNextTextBUF.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Cfg.c_CfgReadNextTextBUF.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i8** }

@.str = private unnamed_addr constant [3 x i8] c"\09 \00", align 1
@TAG_DECLARE = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [2 x i8] c"}\00", align 1
@TAG_STRING = common dso_local global i8* null, align 8
@TAG_INT = common dso_local global i8* null, align 8
@TAG_INT64 = common dso_local global i8* null, align 8
@TAG_BOOL = common dso_local global i8* null, align 8
@TAG_TRUE = common dso_local global i8* null, align 8
@TAG_BYTE = common dso_local global i8* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @CfgReadNextTextBUF(i32* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_4__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store i32* %1, i32** %5, align 8
  %19 = load i32*, i32** %4, align 8
  %20 = icmp eq i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32*, i32** %5, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %21, %2
  store i32 0, i32* %3, align 4
  br label %238

25:                                               ; preds = %21
  store i32 1, i32* %11, align 4
  %26 = load i32*, i32** %4, align 8
  %27 = call i8* @CfgReadNextLine(i32* %26)
  store i8* %27, i8** %6, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = icmp eq i8* %28, null
  br i1 %29, label %30, label %31

30:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %238

31:                                               ; preds = %25
  %32 = load i8*, i8** %6, align 8
  %33 = call %struct.TYPE_4__* @ParseToken(i8* %32, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store %struct.TYPE_4__* %33, %struct.TYPE_4__** %7, align 8
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %35 = icmp eq %struct.TYPE_4__* %34, null
  br i1 %35, label %36, label %39

36:                                               ; preds = %31
  %37 = load i8*, i8** %6, align 8
  %38 = call i32 @Free(i8* %37)
  store i32 0, i32* %3, align 4
  br label %238

39:                                               ; preds = %31
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = icmp sge i32 %42, 1
  br i1 %43, label %44, label %232

44:                                               ; preds = %39
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i8**, i8*** %46, align 8
  %48 = getelementptr inbounds i8*, i8** %47, i64 0
  %49 = load i8*, i8** %48, align 8
  %50 = load i8*, i8** @TAG_DECLARE, align 8
  %51 = call i32 @StrCmpi(i8* %49, i8* %50)
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %79, label %53

53:                                               ; preds = %44
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp sge i32 %56, 2
  br i1 %57, label %58, label %78

58:                                               ; preds = %53
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 1
  %61 = load i8**, i8*** %60, align 8
  %62 = getelementptr inbounds i8*, i8** %61, i64 1
  %63 = load i8*, i8** %62, align 8
  %64 = call i8* @CfgUnescape(i8* %63)
  store i8* %64, i8** %8, align 8
  %65 = load i32*, i32** %5, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = call i32* @CfgCreateFolder(i32* %65, i8* %66)
  store i32* %67, i32** %12, align 8
  br label %68

68:                                               ; preds = %58, %74
  %69 = load i32*, i32** %4, align 8
  %70 = load i32*, i32** %12, align 8
  %71 = call i32 @CfgReadNextTextBUF(i32* %69, i32* %70)
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %75

74:                                               ; preds = %68
  br label %68

75:                                               ; preds = %73
  %76 = load i8*, i8** %8, align 8
  %77 = call i32 @Free(i8* %76)
  br label %78

78:                                               ; preds = %75, %53
  br label %79

79:                                               ; preds = %78, %44
  %80 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 1
  %82 = load i8**, i8*** %81, align 8
  %83 = getelementptr inbounds i8*, i8** %82, i64 0
  %84 = load i8*, i8** %83, align 8
  %85 = call i32 @StrCmpi(i8* %84, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %88, label %87

87:                                               ; preds = %79
  store i32 0, i32* %11, align 4
  br label %88

88:                                               ; preds = %87, %79
  %89 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = icmp sge i32 %91, 3
  br i1 %92, label %93, label %231

93:                                               ; preds = %88
  %94 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 1
  %96 = load i8**, i8*** %95, align 8
  %97 = getelementptr inbounds i8*, i8** %96, i64 1
  %98 = load i8*, i8** %97, align 8
  %99 = call i8* @CfgUnescape(i8* %98)
  store i8* %99, i8** %8, align 8
  %100 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 1
  %102 = load i8**, i8*** %101, align 8
  %103 = getelementptr inbounds i8*, i8** %102, i64 2
  %104 = load i8*, i8** %103, align 8
  store i8* %104, i8** %10, align 8
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 1
  %107 = load i8**, i8*** %106, align 8
  %108 = getelementptr inbounds i8*, i8** %107, i64 0
  %109 = load i8*, i8** %108, align 8
  %110 = load i8*, i8** @TAG_STRING, align 8
  %111 = call i32 @StrCmpi(i8* %109, i8* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %141, label %113

113:                                              ; preds = %93
  %114 = load i8*, i8** %10, align 8
  %115 = call i8* @CfgUnescape(i8* %114)
  store i8* %115, i8** %9, align 8
  %116 = load i8*, i8** %9, align 8
  %117 = load i8*, i8** %9, align 8
  %118 = call i32 @StrLen(i8* %117)
  %119 = call i64 @CalcUtf8ToUni(i8* %116, i32 %118)
  store i64 %119, i64* %14, align 8
  %120 = load i64, i64* %14, align 8
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %138

122:                                              ; preds = %113
  %123 = load i64, i64* %14, align 8
  %124 = trunc i64 %123 to i32
  %125 = call i8* @Malloc(i32 %124)
  store i8* %125, i8** %13, align 8
  %126 = load i8*, i8** %13, align 8
  %127 = load i64, i64* %14, align 8
  %128 = load i8*, i8** %9, align 8
  %129 = load i8*, i8** %9, align 8
  %130 = call i32 @StrLen(i8* %129)
  %131 = call i32 @Utf8ToUni(i8* %126, i64 %127, i8* %128, i32 %130)
  %132 = load i32*, i32** %5, align 8
  %133 = load i8*, i8** %8, align 8
  %134 = load i8*, i8** %13, align 8
  %135 = call i32 @CfgAddUniStr(i32* %132, i8* %133, i8* %134)
  %136 = load i8*, i8** %13, align 8
  %137 = call i32 @Free(i8* %136)
  br label %138

138:                                              ; preds = %122, %113
  %139 = load i8*, i8** %9, align 8
  %140 = call i32 @Free(i8* %139)
  br label %141

141:                                              ; preds = %138, %93
  %142 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %143 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %142, i32 0, i32 1
  %144 = load i8**, i8*** %143, align 8
  %145 = getelementptr inbounds i8*, i8** %144, i64 0
  %146 = load i8*, i8** %145, align 8
  %147 = load i8*, i8** @TAG_INT, align 8
  %148 = call i32 @StrCmpi(i8* %146, i8* %147)
  %149 = icmp ne i32 %148, 0
  br i1 %149, label %156, label %150

150:                                              ; preds = %141
  %151 = load i32*, i32** %5, align 8
  %152 = load i8*, i8** %8, align 8
  %153 = load i8*, i8** %10, align 8
  %154 = call i64 @ToInt(i8* %153)
  %155 = call i32 @CfgAddInt(i32* %151, i8* %152, i64 %154)
  br label %156

156:                                              ; preds = %150, %141
  %157 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %157, i32 0, i32 1
  %159 = load i8**, i8*** %158, align 8
  %160 = getelementptr inbounds i8*, i8** %159, i64 0
  %161 = load i8*, i8** %160, align 8
  %162 = load i8*, i8** @TAG_INT64, align 8
  %163 = call i32 @StrCmpi(i8* %161, i8* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %171, label %165

165:                                              ; preds = %156
  %166 = load i32*, i32** %5, align 8
  %167 = load i8*, i8** %8, align 8
  %168 = load i8*, i8** %10, align 8
  %169 = call i32 @ToInt64(i8* %168)
  %170 = call i32 @CfgAddInt64(i32* %166, i8* %167, i32 %169)
  br label %171

171:                                              ; preds = %165, %156
  %172 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %173 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %172, i32 0, i32 1
  %174 = load i8**, i8*** %173, align 8
  %175 = getelementptr inbounds i8*, i8** %174, i64 0
  %176 = load i8*, i8** %175, align 8
  %177 = load i8*, i8** @TAG_BOOL, align 8
  %178 = call i32 @StrCmpi(i8* %176, i8* %177)
  %179 = icmp ne i32 %178, 0
  br i1 %179, label %197, label %180

180:                                              ; preds = %171
  store i32 0, i32* %15, align 4
  %181 = load i8*, i8** %10, align 8
  %182 = load i8*, i8** @TAG_TRUE, align 8
  %183 = call i32 @StrCmpi(i8* %181, i8* %182)
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %186, label %185

185:                                              ; preds = %180
  store i32 1, i32* %15, align 4
  br label %192

186:                                              ; preds = %180
  %187 = load i8*, i8** %10, align 8
  %188 = call i64 @ToInt(i8* %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %186
  store i32 1, i32* %15, align 4
  br label %191

191:                                              ; preds = %190, %186
  br label %192

192:                                              ; preds = %191, %185
  %193 = load i32*, i32** %5, align 8
  %194 = load i8*, i8** %8, align 8
  %195 = load i32, i32* %15, align 4
  %196 = call i32 @CfgAddBool(i32* %193, i8* %194, i32 %195)
  br label %197

197:                                              ; preds = %192, %171
  %198 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %199 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %198, i32 0, i32 1
  %200 = load i8**, i8*** %199, align 8
  %201 = getelementptr inbounds i8*, i8** %200, i64 0
  %202 = load i8*, i8** %201, align 8
  %203 = load i8*, i8** @TAG_BYTE, align 8
  %204 = call i32 @StrCmpi(i8* %202, i8* %203)
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %228, label %206

206:                                              ; preds = %197
  %207 = load i8*, i8** %10, align 8
  %208 = call i8* @CfgUnescape(i8* %207)
  store i8* %208, i8** %16, align 8
  %209 = load i8*, i8** %16, align 8
  %210 = call i32 @StrLen(i8* %209)
  %211 = mul nsw i32 %210, 4
  %212 = add nsw i32 %211, 64
  %213 = call i8* @Malloc(i32 %212)
  store i8* %213, i8** %17, align 8
  %214 = load i8*, i8** %17, align 8
  %215 = load i8*, i8** %16, align 8
  %216 = load i8*, i8** %16, align 8
  %217 = call i32 @StrLen(i8* %216)
  %218 = call i32 @B64_Decode(i8* %214, i8* %215, i32 %217)
  store i32 %218, i32* %18, align 4
  %219 = load i32*, i32** %5, align 8
  %220 = load i8*, i8** %8, align 8
  %221 = load i8*, i8** %17, align 8
  %222 = load i32, i32* %18, align 4
  %223 = call i32 @CfgAddByte(i32* %219, i8* %220, i8* %221, i32 %222)
  %224 = load i8*, i8** %17, align 8
  %225 = call i32 @Free(i8* %224)
  %226 = load i8*, i8** %16, align 8
  %227 = call i32 @Free(i8* %226)
  br label %228

228:                                              ; preds = %206, %197
  %229 = load i8*, i8** %8, align 8
  %230 = call i32 @Free(i8* %229)
  br label %231

231:                                              ; preds = %228, %88
  br label %232

232:                                              ; preds = %231, %39
  %233 = load %struct.TYPE_4__*, %struct.TYPE_4__** %7, align 8
  %234 = call i32 @FreeToken(%struct.TYPE_4__* %233)
  %235 = load i8*, i8** %6, align 8
  %236 = call i32 @Free(i8* %235)
  %237 = load i32, i32* %11, align 4
  store i32 %237, i32* %3, align 4
  br label %238

238:                                              ; preds = %232, %36, %30, %24
  %239 = load i32, i32* %3, align 4
  ret i32 %239
}

declare dso_local i8* @CfgReadNextLine(i32*) #1

declare dso_local %struct.TYPE_4__* @ParseToken(i8*, i8*) #1

declare dso_local i32 @Free(i8*) #1

declare dso_local i32 @StrCmpi(i8*, i8*) #1

declare dso_local i8* @CfgUnescape(i8*) #1

declare dso_local i32* @CfgCreateFolder(i32*, i8*) #1

declare dso_local i64 @CalcUtf8ToUni(i8*, i32) #1

declare dso_local i32 @StrLen(i8*) #1

declare dso_local i8* @Malloc(i32) #1

declare dso_local i32 @Utf8ToUni(i8*, i64, i8*, i32) #1

declare dso_local i32 @CfgAddUniStr(i32*, i8*, i8*) #1

declare dso_local i32 @CfgAddInt(i32*, i8*, i64) #1

declare dso_local i64 @ToInt(i8*) #1

declare dso_local i32 @CfgAddInt64(i32*, i8*, i32) #1

declare dso_local i32 @ToInt64(i8*) #1

declare dso_local i32 @CfgAddBool(i32*, i8*, i32) #1

declare dso_local i32 @B64_Decode(i8*, i8*, i32) #1

declare dso_local i32 @CfgAddByte(i32*, i8*, i8*, i32) #1

declare dso_local i32 @FreeToken(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
