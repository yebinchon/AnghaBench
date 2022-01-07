; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_validate_csblob.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_ubc_subr.c_cs_validate_csblob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, %struct.TYPE_13__* }
%struct.TYPE_13__ = type { i32, i32 }

@CSMAGIC_EMBEDDED_SIGNATURE = common dso_local global i64 0, align 8
@EBADEXEC = common dso_local global i32 0, align 4
@CSSLOT_CODEDIRECTORY = common dso_local global i64 0, align 8
@CSSLOT_ALTERNATE_CODEDIRECTORIES = common dso_local global i64 0, align 8
@CSSLOT_ALTERNATE_CODEDIRECTORY_LIMIT = common dso_local global i64 0, align 8
@cs_debug = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [53 x i8] c"CodeDirectory type %d rank %d at slot 0x%x index %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"using CodeDirectory type %d (rank %d)\0A\00", align 1
@.str.2 = private unnamed_addr constant [58 x i8] c"multiple hash=%d CodeDirectories in signature; rejecting\0A\00", align 1
@CSSLOT_ENTITLEMENTS = common dso_local global i64 0, align 8
@CSMAGIC_EMBEDDED_ENTITLEMENTS = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [29 x i8] c"multiple entitlements blobs\0A\00", align 1
@CSMAGIC_CODEDIRECTORY = common dso_local global i64 0, align 8
@CS_ADHOC = common dso_local global i64 0, align 8
@CS_HASHTYPE_SHA1 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, i64, %struct.TYPE_12__**, %struct.TYPE_11__**)* @cs_validate_csblob to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs_validate_csblob(i32* %0, i64 %1, %struct.TYPE_12__** %2, %struct.TYPE_11__** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_12__**, align 8
  %9 = alloca %struct.TYPE_11__**, align 8
  %10 = alloca %struct.TYPE_11__*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_10__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca %struct.TYPE_12__*, align 8
  %17 = alloca i32, align 4
  %18 = alloca %struct.TYPE_13__*, align 8
  %19 = alloca i64, align 8
  %20 = alloca i64, align 8
  %21 = alloca %struct.TYPE_11__*, align 8
  %22 = alloca i64, align 8
  %23 = alloca %struct.TYPE_12__*, align 8
  %24 = alloca i32, align 4
  store i32* %0, i32** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_12__** %2, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_11__** %3, %struct.TYPE_11__*** %9, align 8
  %25 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %25, align 8
  %26 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %26, align 8
  %27 = load i32*, i32** %6, align 8
  %28 = bitcast i32* %27 to i8*
  %29 = bitcast i8* %28 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %10, align 8
  %30 = load i64, i64* %7, align 8
  store i64 %30, i64* %12, align 8
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %32 = load i64, i64* %12, align 8
  %33 = call i32 @cs_validate_blob(%struct.TYPE_11__* %31, i64 %32)
  store i32 %33, i32* %11, align 4
  %34 = load i32, i32* %11, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %4
  %37 = load i32, i32* %11, align 4
  store i32 %37, i32* %5, align 4
  br label %242

38:                                               ; preds = %4
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %40 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i64 @ntohl(i32 %41)
  store i64 %42, i64* %12, align 8
  %43 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %44 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = call i64 @ntohl(i32 %45)
  %47 = load i64, i64* @CSMAGIC_EMBEDDED_SIGNATURE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %212

49:                                               ; preds = %38
  store %struct.TYPE_12__* null, %struct.TYPE_12__** %16, align 8
  store i32 0, i32* %17, align 4
  %50 = load i64, i64* %12, align 8
  %51 = icmp ult i64 %50, 16
  br i1 %51, label %52, label %54

52:                                               ; preds = %49
  %53 = load i32, i32* @EBADEXEC, align 4
  store i32 %53, i32* %5, align 4
  br label %242

54:                                               ; preds = %49
  %55 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %56 = bitcast %struct.TYPE_11__* %55 to %struct.TYPE_10__*
  store %struct.TYPE_10__* %56, %struct.TYPE_10__** %13, align 8
  %57 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 8
  %60 = call i64 @ntohl(i32 %59)
  store i64 %60, i64* %15, align 8
  %61 = load i64, i64* %12, align 8
  %62 = sub i64 %61, 16
  %63 = udiv i64 %62, 8
  %64 = load i64, i64* %15, align 8
  %65 = icmp ult i64 %63, %64
  br i1 %65, label %66, label %68

66:                                               ; preds = %54
  %67 = load i32, i32* @EBADEXEC, align 4
  store i32 %67, i32* %5, align 4
  br label %242

68:                                               ; preds = %54
  store i64 0, i64* %14, align 8
  br label %69

69:                                               ; preds = %208, %68
  %70 = load i64, i64* %14, align 8
  %71 = load i64, i64* %15, align 8
  %72 = icmp ult i64 %70, %71
  br i1 %72, label %73, label %211

73:                                               ; preds = %69
  %74 = load %struct.TYPE_10__*, %struct.TYPE_10__** %13, align 8
  %75 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_13__*, %struct.TYPE_13__** %75, align 8
  %77 = load i64, i64* %14, align 8
  %78 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %76, i64 %77
  store %struct.TYPE_13__* %78, %struct.TYPE_13__** %18, align 8
  %79 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %80 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = call i64 @ntohl(i32 %81)
  store i64 %82, i64* %19, align 8
  %83 = load %struct.TYPE_13__*, %struct.TYPE_13__** %18, align 8
  %84 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i64 @ntohl(i32 %85)
  store i64 %86, i64* %20, align 8
  %87 = load i64, i64* %12, align 8
  %88 = load i64, i64* %20, align 8
  %89 = icmp ult i64 %87, %88
  br i1 %89, label %90, label %92

90:                                               ; preds = %73
  %91 = load i32, i32* @EBADEXEC, align 4
  store i32 %91, i32* %5, align 4
  br label %242

92:                                               ; preds = %73
  %93 = load i32*, i32** %6, align 8
  %94 = load i64, i64* %20, align 8
  %95 = getelementptr inbounds i32, i32* %93, i64 %94
  %96 = bitcast i32* %95 to i8*
  %97 = bitcast i8* %96 to %struct.TYPE_11__*
  store %struct.TYPE_11__* %97, %struct.TYPE_11__** %21, align 8
  %98 = load i64, i64* %12, align 8
  %99 = load i64, i64* %20, align 8
  %100 = sub i64 %98, %99
  store i64 %100, i64* %22, align 8
  %101 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %102 = load i64, i64* %22, align 8
  %103 = call i32 @cs_validate_blob(%struct.TYPE_11__* %101, i64 %102)
  store i32 %103, i32* %11, align 4
  %104 = icmp ne i32 %103, 0
  br i1 %104, label %105, label %107

105:                                              ; preds = %92
  %106 = load i32, i32* %11, align 4
  store i32 %106, i32* %5, align 4
  br label %242

107:                                              ; preds = %92
  %108 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %109 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 4
  %111 = call i64 @ntohl(i32 %110)
  store i64 %111, i64* %22, align 8
  %112 = load i64, i64* %19, align 8
  %113 = load i64, i64* @CSSLOT_CODEDIRECTORY, align 8
  %114 = icmp eq i64 %112, %113
  br i1 %114, label %123, label %115

115:                                              ; preds = %107
  %116 = load i64, i64* %19, align 8
  %117 = load i64, i64* @CSSLOT_ALTERNATE_CODEDIRECTORIES, align 8
  %118 = icmp uge i64 %116, %117
  br i1 %118, label %119, label %183

119:                                              ; preds = %115
  %120 = load i64, i64* %19, align 8
  %121 = load i64, i64* @CSSLOT_ALTERNATE_CODEDIRECTORY_LIMIT, align 8
  %122 = icmp ult i64 %120, %121
  br i1 %122, label %123, label %183

123:                                              ; preds = %119, %107
  %124 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %125 = bitcast %struct.TYPE_11__* %124 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %125, %struct.TYPE_12__** %23, align 8
  %126 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %127 = load i64, i64* %22, align 8
  %128 = call i32 @cs_validate_codedirectory(%struct.TYPE_12__* %126, i64 %127)
  store i32 %128, i32* %11, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %130, label %132

130:                                              ; preds = %123
  %131 = load i32, i32* %11, align 4
  store i32 %131, i32* %5, align 4
  br label %242

132:                                              ; preds = %123
  %133 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %134 = call i32 @hash_rank(%struct.TYPE_12__* %133)
  store i32 %134, i32* %24, align 4
  %135 = load i32, i32* @cs_debug, align 4
  %136 = icmp sgt i32 %135, 3
  br i1 %136, label %137, label %147

137:                                              ; preds = %132
  %138 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  %139 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %24, align 4
  %142 = load i64, i64* %19, align 8
  %143 = trunc i64 %142 to i32
  %144 = load i64, i64* %14, align 8
  %145 = trunc i64 %144 to i32
  %146 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([53 x i8], [53 x i8]* @.str, i64 0, i64 0), i32 %140, i32 %141, i32 %143, i32 %145)
  br label %147

147:                                              ; preds = %137, %132
  %148 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %149 = icmp eq %struct.TYPE_12__* %148, null
  br i1 %149, label %154, label %150

150:                                              ; preds = %147
  %151 = load i32, i32* %24, align 4
  %152 = load i32, i32* %17, align 4
  %153 = icmp ugt i32 %151, %152
  br i1 %153, label %154, label %168

154:                                              ; preds = %150, %147
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %23, align 8
  store %struct.TYPE_12__* %155, %struct.TYPE_12__** %16, align 8
  %156 = load i32, i32* %24, align 4
  store i32 %156, i32* %17, align 4
  %157 = load i32, i32* @cs_debug, align 4
  %158 = icmp sgt i32 %157, 2
  br i1 %158, label %159, label %165

159:                                              ; preds = %154
  %160 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %161 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = load i32, i32* %17, align 4
  %164 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %162, i32 %163)
  br label %165

165:                                              ; preds = %159, %154
  %166 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %167 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* %166, %struct.TYPE_12__** %167, align 8
  br label %182

168:                                              ; preds = %150
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %170 = icmp ne %struct.TYPE_12__* %169, null
  br i1 %170, label %171, label %181

171:                                              ; preds = %168
  %172 = load i32, i32* %24, align 4
  %173 = load i32, i32* %17, align 4
  %174 = icmp eq i32 %172, %173
  br i1 %174, label %175, label %181

175:                                              ; preds = %171
  %176 = load %struct.TYPE_12__*, %struct.TYPE_12__** %16, align 8
  %177 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 4
  %179 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([58 x i8], [58 x i8]* @.str.2, i64 0, i64 0), i32 %178)
  %180 = load i32, i32* @EBADEXEC, align 4
  store i32 %180, i32* %5, align 4
  br label %242

181:                                              ; preds = %171, %168
  br label %182

182:                                              ; preds = %181, %165
  br label %207

183:                                              ; preds = %119, %115
  %184 = load i64, i64* %19, align 8
  %185 = load i64, i64* @CSSLOT_ENTITLEMENTS, align 8
  %186 = icmp eq i64 %184, %185
  br i1 %186, label %187, label %206

187:                                              ; preds = %183
  %188 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %189 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %188, i32 0, i32 1
  %190 = load i32, i32* %189, align 4
  %191 = call i64 @ntohl(i32 %190)
  %192 = load i64, i64* @CSMAGIC_EMBEDDED_ENTITLEMENTS, align 8
  %193 = icmp ne i64 %191, %192
  br i1 %193, label %194, label %196

194:                                              ; preds = %187
  %195 = load i32, i32* @EBADEXEC, align 4
  store i32 %195, i32* %5, align 4
  br label %242

196:                                              ; preds = %187
  %197 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  %198 = load %struct.TYPE_11__*, %struct.TYPE_11__** %197, align 8
  %199 = icmp ne %struct.TYPE_11__* %198, null
  br i1 %199, label %200, label %203

200:                                              ; preds = %196
  %201 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0))
  %202 = load i32, i32* @EBADEXEC, align 4
  store i32 %202, i32* %5, align 4
  br label %242

203:                                              ; preds = %196
  %204 = load %struct.TYPE_11__*, %struct.TYPE_11__** %21, align 8
  %205 = load %struct.TYPE_11__**, %struct.TYPE_11__*** %9, align 8
  store %struct.TYPE_11__* %204, %struct.TYPE_11__** %205, align 8
  br label %206

206:                                              ; preds = %203, %183
  br label %207

207:                                              ; preds = %206, %182
  br label %208

208:                                              ; preds = %207
  %209 = load i64, i64* %14, align 8
  %210 = add i64 %209, 1
  store i64 %210, i64* %14, align 8
  br label %69

211:                                              ; preds = %69
  br label %235

212:                                              ; preds = %38
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 1
  %215 = load i32, i32* %214, align 4
  %216 = call i64 @ntohl(i32 %215)
  %217 = load i64, i64* @CSMAGIC_CODEDIRECTORY, align 8
  %218 = icmp eq i64 %216, %217
  br i1 %218, label %219, label %232

219:                                              ; preds = %212
  %220 = load i32*, i32** %6, align 8
  %221 = bitcast i32* %220 to i8*
  %222 = bitcast i8* %221 to %struct.TYPE_12__*
  %223 = load i64, i64* %12, align 8
  %224 = call i32 @cs_validate_codedirectory(%struct.TYPE_12__* %222, i64 %223)
  store i32 %224, i32* %11, align 4
  %225 = icmp ne i32 %224, 0
  br i1 %225, label %226, label %228

226:                                              ; preds = %219
  %227 = load i32, i32* %11, align 4
  store i32 %227, i32* %5, align 4
  br label %242

228:                                              ; preds = %219
  %229 = load %struct.TYPE_11__*, %struct.TYPE_11__** %10, align 8
  %230 = bitcast %struct.TYPE_11__* %229 to %struct.TYPE_12__*
  %231 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  store %struct.TYPE_12__* %230, %struct.TYPE_12__** %231, align 8
  br label %234

232:                                              ; preds = %212
  %233 = load i32, i32* @EBADEXEC, align 4
  store i32 %233, i32* %5, align 4
  br label %242

234:                                              ; preds = %228
  br label %235

235:                                              ; preds = %234, %211
  %236 = load %struct.TYPE_12__**, %struct.TYPE_12__*** %8, align 8
  %237 = load %struct.TYPE_12__*, %struct.TYPE_12__** %236, align 8
  %238 = icmp eq %struct.TYPE_12__* %237, null
  br i1 %238, label %239, label %241

239:                                              ; preds = %235
  %240 = load i32, i32* @EBADEXEC, align 4
  store i32 %240, i32* %5, align 4
  br label %242

241:                                              ; preds = %235
  store i32 0, i32* %5, align 4
  br label %242

242:                                              ; preds = %241, %239, %232, %226, %200, %194, %175, %130, %105, %90, %66, %52, %36
  %243 = load i32, i32* %5, align 4
  ret i32 %243
}

declare dso_local i32 @cs_validate_blob(%struct.TYPE_11__*, i64) #1

declare dso_local i64 @ntohl(i32) #1

declare dso_local i32 @cs_validate_codedirectory(%struct.TYPE_12__*, i64) #1

declare dso_local i32 @hash_rank(%struct.TYPE_12__*) #1

declare dso_local i32 @printf(i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
