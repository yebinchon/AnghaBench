; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSecureNatHostSet.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Command.c_PsSecureNatHostSet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { i32 (%struct.TYPE_19__*, i32)* }
%struct.TYPE_17__ = type { i32, i32* }
%struct.TYPE_16__ = type { i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i8*, i32*, i32*, i32, i32 }
%struct.TYPE_20__ = type { i32, i32 }

@.str = private unnamed_addr constant [4 x i8] c"MAC\00", align 1
@CmdPrompt = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"CMD_SecureNatHostSet_Prompt_MAC\00", align 1
@.str.2 = private unnamed_addr constant [3 x i8] c"IP\00", align 1
@.str.3 = private unnamed_addr constant [31 x i8] c"CMD_SecureNatHostSet_Prompt_IP\00", align 1
@CmdEvalIp = common dso_local global i32* null, align 8
@.str.4 = private unnamed_addr constant [5 x i8] c"MASK\00", align 1
@.str.5 = private unnamed_addr constant [33 x i8] c"CMD_SecureNatHostSet_Prompt_MASK\00", align 1
@.str.6 = private unnamed_addr constant [21 x i8] c"CMD_Hub_Not_Selected\00", align 1
@ERR_INVALID_PARAMETER = common dso_local global i64 0, align 8
@ERR_NO_ERROR = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @PsSecureNatHostSet(%struct.TYPE_19__* %0, i8* %1, i32* %2, i8* %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_19__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_16__, align 4
  %14 = alloca [3 x %struct.TYPE_18__], align 16
  %15 = alloca i8*, align 8
  %16 = alloca i8*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.TYPE_20__*, align 8
  %20 = alloca i64, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32* %2, i32** %8, align 8
  store i8* %3, i8** %9, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to %struct.TYPE_17__*
  store %struct.TYPE_17__* %22, %struct.TYPE_17__** %11, align 8
  store i64 0, i64* %12, align 8
  %23 = getelementptr inbounds [3 x %struct.TYPE_18__], [3 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %24 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 0
  store i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i8** %24, align 16
  %25 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 1
  %26 = load i32, i32* @CmdPrompt, align 4
  %27 = sext i32 %26 to i64
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %25, align 8
  %29 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 2
  %30 = call i32 @_UU(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  %31 = sext i32 %30 to i64
  %32 = inttoptr i64 %31 to i32*
  store i32* %32, i32** %29, align 16
  %33 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 3
  store i32 0, i32* %33, align 8
  %34 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i32 0, i32 4
  store i32 0, i32* %34, align 4
  %35 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %23, i64 1
  %36 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 0
  store i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8** %36, align 16
  %37 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 1
  %38 = load i32, i32* @CmdPrompt, align 4
  %39 = sext i32 %38 to i64
  %40 = inttoptr i64 %39 to i32*
  store i32* %40, i32** %37, align 8
  %41 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 2
  %42 = call i32 @_UU(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0))
  %43 = sext i32 %42 to i64
  %44 = inttoptr i64 %43 to i32*
  store i32* %44, i32** %41, align 16
  %45 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 3
  %46 = load i32*, i32** @CmdEvalIp, align 8
  %47 = ptrtoint i32* %46 to i32
  store i32 %47, i32* %45, align 8
  %48 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i32 0, i32 4
  store i32 0, i32* %48, align 4
  %49 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %35, i64 1
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 0
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0), i8** %50, align 16
  %51 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 1
  %52 = load i32, i32* @CmdPrompt, align 4
  %53 = sext i32 %52 to i64
  %54 = inttoptr i64 %53 to i32*
  store i32* %54, i32** %51, align 8
  %55 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %56 = call i32 @_UU(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.5, i64 0, i64 0))
  %57 = sext i32 %56 to i64
  %58 = inttoptr i64 %57 to i32*
  store i32* %58, i32** %55, align 16
  %59 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 3
  %60 = load i32*, i32** @CmdEvalIp, align 8
  %61 = ptrtoint i32* %60 to i32
  store i32 %61, i32* %59, align 8
  %62 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 4
  store i32 0, i32* %62, align 4
  %63 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %64 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %63, i32 0, i32 1
  %65 = load i32*, i32** %64, align 8
  %66 = icmp eq i32* %65, null
  br i1 %66, label %67, label %75

67:                                               ; preds = %4
  %68 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %69 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %68, i32 0, i32 0
  %70 = load i32 (%struct.TYPE_19__*, i32)*, i32 (%struct.TYPE_19__*, i32)** %69, align 8
  %71 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %72 = call i32 @_UU(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.6, i64 0, i64 0))
  %73 = call i32 %70(%struct.TYPE_19__* %71, i32 %72)
  %74 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %74, i64* %5, align 8
  br label %213

75:                                               ; preds = %4
  %76 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %77 = load i8*, i8** %7, align 8
  %78 = load i32*, i32** %8, align 8
  %79 = getelementptr inbounds [3 x %struct.TYPE_18__], [3 x %struct.TYPE_18__]* %14, i64 0, i64 0
  %80 = call i32* @ParseCommandList(%struct.TYPE_19__* %76, i8* %77, i32* %78, %struct.TYPE_18__* %79, i32 3)
  store i32* %80, i32** %10, align 8
  %81 = load i32*, i32** %10, align 8
  %82 = icmp eq i32* %81, null
  br i1 %82, label %83, label %85

83:                                               ; preds = %75
  %84 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %84, i64* %5, align 8
  br label %213

85:                                               ; preds = %75
  %86 = call i32 @Zero(%struct.TYPE_16__* %13, i32 16)
  %87 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %90 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %89, i32 0, i32 1
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @StrCpy(i32 %88, i32 4, i32* %91)
  %93 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %94 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i64 @ScGetSecureNATOption(i32 %95, %struct.TYPE_16__* %13)
  store i64 %96, i64* %12, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i64, i64* @ERR_NO_ERROR, align 8
  %99 = icmp ne i64 %97, %98
  br i1 %99, label %100, label %107

100:                                              ; preds = %85
  %101 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %102 = load i64, i64* %12, align 8
  %103 = call i32 @CmdPrintError(%struct.TYPE_19__* %101, i64 %102)
  %104 = load i32*, i32** %10, align 8
  %105 = call i32 @FreeParamValueList(i32* %104)
  %106 = load i64, i64* %12, align 8
  store i64 %106, i64* %5, align 8
  br label %213

107:                                              ; preds = %85
  store i32 1, i32* %18, align 4
  %108 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 3
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %110, i32 0, i32 1
  %112 = load i32*, i32** %111, align 8
  %113 = call i32 @StrCpy(i32 %109, i32 4, i32* %112)
  %114 = load i32*, i32** %10, align 8
  %115 = call i8* @GetParamStr(i32* %114, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  store i8* %115, i8** %15, align 8
  %116 = load i32*, i32** %10, align 8
  %117 = call i8* @GetParamStr(i32* %116, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0))
  store i8* %117, i8** %16, align 8
  %118 = load i32*, i32** %10, align 8
  %119 = call i8* @GetParamStr(i32* %118, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  store i8* %119, i8** %17, align 8
  %120 = load i8*, i8** %15, align 8
  %121 = call i32 @IsEmptyStr(i8* %120)
  %122 = icmp eq i32 %121, 0
  br i1 %122, label %123, label %144

123:                                              ; preds = %107
  %124 = load i8*, i8** %15, align 8
  %125 = call %struct.TYPE_20__* @StrToBin(i8* %124)
  store %struct.TYPE_20__* %125, %struct.TYPE_20__** %19, align 8
  %126 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %127 = icmp eq %struct.TYPE_20__* %126, null
  br i1 %127, label %133, label %128

128:                                              ; preds = %123
  %129 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %130 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %129, i32 0, i32 0
  %131 = load i32, i32* %130, align 4
  %132 = icmp ne i32 %131, 6
  br i1 %132, label %133, label %134

133:                                              ; preds = %128, %123
  store i32 0, i32* %18, align 4
  br label %141

134:                                              ; preds = %128
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 2
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %138 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @Copy(i32 %136, i32 %139, i32 6)
  br label %141

141:                                              ; preds = %134, %133
  %142 = load %struct.TYPE_20__*, %struct.TYPE_20__** %19, align 8
  %143 = call i32 @FreeBuf(%struct.TYPE_20__* %142)
  br label %144

144:                                              ; preds = %141, %107
  %145 = load i8*, i8** %16, align 8
  %146 = call i32 @IsEmptyStr(i8* %145)
  %147 = icmp eq i32 %146, 0
  br i1 %147, label %148, label %168

148:                                              ; preds = %144
  %149 = load i8*, i8** %16, align 8
  %150 = call i32 @IsIpStr4(i8* %149)
  %151 = icmp eq i32 %150, 0
  br i1 %151, label %152, label %153

152:                                              ; preds = %148
  store i32 0, i32* %18, align 4
  br label %167

153:                                              ; preds = %148
  %154 = load i8*, i8** %16, align 8
  %155 = call i64 @StrToIP32(i8* %154)
  store i64 %155, i64* %20, align 8
  %156 = load i64, i64* %20, align 8
  %157 = icmp eq i64 %156, 0
  br i1 %157, label %161, label %158

158:                                              ; preds = %153
  %159 = load i64, i64* %20, align 8
  %160 = icmp eq i64 %159, 4294967295
  br i1 %160, label %161, label %162

161:                                              ; preds = %158, %153
  store i32 0, i32* %18, align 4
  br label %166

162:                                              ; preds = %158
  %163 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 1
  %164 = load i64, i64* %20, align 8
  %165 = call i32 @UINTToIP(i32* %163, i64 %164)
  br label %166

166:                                              ; preds = %162, %161
  br label %167

167:                                              ; preds = %166, %152
  br label %168

168:                                              ; preds = %167, %144
  %169 = load i8*, i8** %17, align 8
  %170 = call i32 @IsEmptyStr(i8* %169)
  %171 = icmp eq i32 %170, 0
  br i1 %171, label %172, label %182

172:                                              ; preds = %168
  %173 = load i8*, i8** %17, align 8
  %174 = call i32 @IsIpStr4(i8* %173)
  %175 = icmp eq i32 %174, 0
  br i1 %175, label %176, label %177

176:                                              ; preds = %172
  store i32 0, i32* %18, align 4
  br label %181

177:                                              ; preds = %172
  %178 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %13, i32 0, i32 0
  %179 = load i8*, i8** %17, align 8
  %180 = call i32 @StrToIP(i32* %178, i8* %179)
  br label %181

181:                                              ; preds = %177, %176
  br label %182

182:                                              ; preds = %181, %168
  %183 = load i32, i32* %18, align 4
  %184 = icmp eq i32 %183, 0
  br i1 %184, label %185, label %193

185:                                              ; preds = %182
  %186 = load i64, i64* @ERR_INVALID_PARAMETER, align 8
  store i64 %186, i64* %12, align 8
  %187 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %188 = load i64, i64* %12, align 8
  %189 = call i32 @CmdPrintError(%struct.TYPE_19__* %187, i64 %188)
  %190 = load i32*, i32** %10, align 8
  %191 = call i32 @FreeParamValueList(i32* %190)
  %192 = load i64, i64* %12, align 8
  store i64 %192, i64* %5, align 8
  br label %213

193:                                              ; preds = %182
  %194 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %195 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i64 @ScSetSecureNATOption(i32 %196, %struct.TYPE_16__* %13)
  store i64 %197, i64* %12, align 8
  %198 = load i64, i64* %12, align 8
  %199 = load i64, i64* @ERR_NO_ERROR, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %208

201:                                              ; preds = %193
  %202 = load %struct.TYPE_19__*, %struct.TYPE_19__** %6, align 8
  %203 = load i64, i64* %12, align 8
  %204 = call i32 @CmdPrintError(%struct.TYPE_19__* %202, i64 %203)
  %205 = load i32*, i32** %10, align 8
  %206 = call i32 @FreeParamValueList(i32* %205)
  %207 = load i64, i64* %12, align 8
  store i64 %207, i64* %5, align 8
  br label %213

208:                                              ; preds = %193
  br label %209

209:                                              ; preds = %208
  br label %210

210:                                              ; preds = %209
  %211 = load i32*, i32** %10, align 8
  %212 = call i32 @FreeParamValueList(i32* %211)
  store i64 0, i64* %5, align 8
  br label %213

213:                                              ; preds = %210, %201, %185, %100, %83, %67
  %214 = load i64, i64* %5, align 8
  ret i64 %214
}

declare dso_local i32 @_UU(i8*) #1

declare dso_local i32* @ParseCommandList(%struct.TYPE_19__*, i8*, i32*, %struct.TYPE_18__*, i32) #1

declare dso_local i32 @Zero(%struct.TYPE_16__*, i32) #1

declare dso_local i32 @StrCpy(i32, i32, i32*) #1

declare dso_local i64 @ScGetSecureNATOption(i32, %struct.TYPE_16__*) #1

declare dso_local i32 @CmdPrintError(%struct.TYPE_19__*, i64) #1

declare dso_local i32 @FreeParamValueList(i32*) #1

declare dso_local i8* @GetParamStr(i32*, i8*) #1

declare dso_local i32 @IsEmptyStr(i8*) #1

declare dso_local %struct.TYPE_20__* @StrToBin(i8*) #1

declare dso_local i32 @Copy(i32, i32, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_20__*) #1

declare dso_local i32 @IsIpStr4(i8*) #1

declare dso_local i64 @StrToIP32(i8*) #1

declare dso_local i32 @UINTToIP(i32*, i64) #1

declare dso_local i32 @StrToIP(i32*, i8*) #1

declare dso_local i64 @ScSetSecureNATOption(i32, %struct.TYPE_16__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
