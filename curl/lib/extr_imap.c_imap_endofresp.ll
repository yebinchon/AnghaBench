; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_endofresp.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_imap.c_imap_endofresp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.IMAP* }
%struct.IMAP = type { i8* }
%struct.TYPE_5__ = type { %struct.imap_conn }
%struct.imap_conn = type { i8*, i32 }

@.str = private unnamed_addr constant [3 x i8] c"OK\00", align 1
@IMAP_RESP_OK = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"PREAUTH\00", align 1
@IMAP_RESP_PREAUTH = common dso_local global i32 0, align 4
@IMAP_RESP_NOT_OK = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"* \00", align 1
@.str.3 = private unnamed_addr constant [11 x i8] c"CAPABILITY\00", align 1
@FALSE = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [5 x i8] c"LIST\00", align 1
@.str.5 = private unnamed_addr constant [6 x i8] c"STORE\00", align 1
@.str.6 = private unnamed_addr constant [6 x i8] c"FETCH\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"SELECT\00", align 1
@.str.8 = private unnamed_addr constant [8 x i8] c"EXAMINE\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"SEARCH\00", align 1
@.str.10 = private unnamed_addr constant [8 x i8] c"EXPUNGE\00", align 1
@.str.11 = private unnamed_addr constant [5 x i8] c"LSUB\00", align 1
@.str.12 = private unnamed_addr constant [4 x i8] c"UID\00", align 1
@.str.13 = private unnamed_addr constant [5 x i8] c"NOOP\00", align 1
@.str.14 = private unnamed_addr constant [3 x i8] c"+ \00", align 1
@.str.15 = private unnamed_addr constant [33 x i8] c"Unexpected continuation response\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i8*, i64, i32*)* @imap_endofresp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @imap_endofresp(%struct.connectdata* %0, i8* %1, i64 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.connectdata*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.IMAP*, align 8
  %11 = alloca %struct.imap_conn*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  store %struct.connectdata* %0, %struct.connectdata** %6, align 8
  store i8* %1, i8** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  %14 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %15 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %14, i32 0, i32 0
  %16 = load %struct.TYPE_6__*, %struct.TYPE_6__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load %struct.IMAP*, %struct.IMAP** %18, align 8
  store %struct.IMAP* %19, %struct.IMAP** %10, align 8
  %20 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %21 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %20, i32 0, i32 1
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  store %struct.imap_conn* %22, %struct.imap_conn** %11, align 8
  %23 = load %struct.imap_conn*, %struct.imap_conn** %11, align 8
  %24 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %12, align 8
  %26 = load i8*, i8** %12, align 8
  %27 = call i64 @strlen(i8* %26)
  store i64 %27, i64* %13, align 8
  %28 = load i64, i64* %8, align 8
  %29 = load i64, i64* %13, align 8
  %30 = add i64 %29, 1
  %31 = icmp uge i64 %28, %30
  br i1 %31, label %32, label %80

32:                                               ; preds = %4
  %33 = load i8*, i8** %12, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load i64, i64* %13, align 8
  %36 = trunc i64 %35 to i32
  %37 = call i32 @memcmp(i8* %33, i8* %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %80, label %39

39:                                               ; preds = %32
  %40 = load i8*, i8** %7, align 8
  %41 = load i64, i64* %13, align 8
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  %43 = load i8, i8* %42, align 1
  %44 = sext i8 %43 to i32
  %45 = icmp eq i32 %44, 32
  br i1 %45, label %46, label %80

46:                                               ; preds = %39
  %47 = load i64, i64* %13, align 8
  %48 = add i64 %47, 1
  %49 = load i8*, i8** %7, align 8
  %50 = getelementptr inbounds i8, i8* %49, i64 %48
  store i8* %50, i8** %7, align 8
  %51 = load i64, i64* %13, align 8
  %52 = add i64 %51, 1
  %53 = load i64, i64* %8, align 8
  %54 = sub i64 %53, %52
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp uge i64 %55, 2
  br i1 %56, label %57, label %64

57:                                               ; preds = %46
  %58 = load i8*, i8** %7, align 8
  %59 = call i32 @memcmp(i8* %58, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 2)
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %64, label %61

61:                                               ; preds = %57
  %62 = load i32, i32* @IMAP_RESP_OK, align 4
  %63 = load i32*, i32** %9, align 8
  store i32 %62, i32* %63, align 4
  br label %78

64:                                               ; preds = %57, %46
  %65 = load i64, i64* %8, align 8
  %66 = icmp uge i64 %65, 7
  br i1 %66, label %67, label %74

67:                                               ; preds = %64
  %68 = load i8*, i8** %7, align 8
  %69 = call i32 @memcmp(i8* %68, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 7)
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %74, label %71

71:                                               ; preds = %67
  %72 = load i32, i32* @IMAP_RESP_PREAUTH, align 4
  %73 = load i32*, i32** %9, align 8
  store i32 %72, i32* %73, align 4
  br label %77

74:                                               ; preds = %67, %64
  %75 = load i32, i32* @IMAP_RESP_NOT_OK, align 4
  %76 = load i32*, i32** %9, align 8
  store i32 %75, i32* %76, align 4
  br label %77

77:                                               ; preds = %74, %71
  br label %78

78:                                               ; preds = %77, %61
  %79 = load i32, i32* @TRUE, align 4
  store i32 %79, i32* %5, align 4
  br label %240

80:                                               ; preds = %39, %32, %4
  %81 = load i64, i64* %8, align 8
  %82 = icmp uge i64 %81, 2
  br i1 %82, label %83, label %200

83:                                               ; preds = %80
  %84 = load i8*, i8** %7, align 8
  %85 = call i32 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i8* %84, i32 2)
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %200, label %87

87:                                               ; preds = %83
  %88 = load %struct.imap_conn*, %struct.imap_conn** %11, align 8
  %89 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  switch i32 %90, label %195 [
    i32 132, label %91
    i32 130, label %99
    i32 128, label %178
    i32 131, label %179
    i32 129, label %187
  ]

91:                                               ; preds = %87
  %92 = load i8*, i8** %7, align 8
  %93 = load i64, i64* %8, align 8
  %94 = call i32 @imap_matchresp(i8* %92, i64 %93, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.3, i64 0, i64 0))
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %98, label %96

96:                                               ; preds = %91
  %97 = load i32, i32* @FALSE, align 4
  store i32 %97, i32* %5, align 4
  br label %240

98:                                               ; preds = %91
  br label %197

99:                                               ; preds = %87
  %100 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %101 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %100, i32 0, i32 0
  %102 = load i8*, i8** %101, align 8
  %103 = icmp ne i8* %102, null
  br i1 %103, label %109, label %104

104:                                              ; preds = %99
  %105 = load i8*, i8** %7, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 @imap_matchresp(i8* %105, i64 %106, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.4, i64 0, i64 0))
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %175

109:                                              ; preds = %104, %99
  %110 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %111 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %110, i32 0, i32 0
  %112 = load i8*, i8** %111, align 8
  %113 = icmp ne i8* %112, null
  br i1 %113, label %114, label %177

114:                                              ; preds = %109
  %115 = load i8*, i8** %7, align 8
  %116 = load i64, i64* %8, align 8
  %117 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %118 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %117, i32 0, i32 0
  %119 = load i8*, i8** %118, align 8
  %120 = call i32 @imap_matchresp(i8* %115, i64 %116, i8* %119)
  %121 = icmp ne i32 %120, 0
  br i1 %121, label %177, label %122

122:                                              ; preds = %114
  %123 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %124 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %123, i32 0, i32 0
  %125 = load i8*, i8** %124, align 8
  %126 = call i32 @strcasecompare(i8* %125, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.5, i64 0, i64 0))
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %133

128:                                              ; preds = %122
  %129 = load i8*, i8** %7, align 8
  %130 = load i64, i64* %8, align 8
  %131 = call i32 @imap_matchresp(i8* %129, i64 %130, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %132 = icmp ne i32 %131, 0
  br i1 %132, label %177, label %133

133:                                              ; preds = %128, %122
  %134 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %135 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = call i32 @strcasecompare(i8* %136, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i64 0, i64 0))
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %177, label %139

139:                                              ; preds = %133
  %140 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %141 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %140, i32 0, i32 0
  %142 = load i8*, i8** %141, align 8
  %143 = call i32 @strcasecompare(i8* %142, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.8, i64 0, i64 0))
  %144 = icmp ne i32 %143, 0
  br i1 %144, label %177, label %145

145:                                              ; preds = %139
  %146 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %147 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %146, i32 0, i32 0
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @strcasecompare(i8* %148, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %150 = icmp ne i32 %149, 0
  br i1 %150, label %177, label %151

151:                                              ; preds = %145
  %152 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %153 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %152, i32 0, i32 0
  %154 = load i8*, i8** %153, align 8
  %155 = call i32 @strcasecompare(i8* %154, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.10, i64 0, i64 0))
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %177, label %157

157:                                              ; preds = %151
  %158 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %159 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %158, i32 0, i32 0
  %160 = load i8*, i8** %159, align 8
  %161 = call i32 @strcasecompare(i8* %160, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.11, i64 0, i64 0))
  %162 = icmp ne i32 %161, 0
  br i1 %162, label %177, label %163

163:                                              ; preds = %157
  %164 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %165 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %164, i32 0, i32 0
  %166 = load i8*, i8** %165, align 8
  %167 = call i32 @strcasecompare(i8* %166, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.12, i64 0, i64 0))
  %168 = icmp ne i32 %167, 0
  br i1 %168, label %177, label %169

169:                                              ; preds = %163
  %170 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %171 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %170, i32 0, i32 0
  %172 = load i8*, i8** %171, align 8
  %173 = call i32 @strcasecompare(i8* %172, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.13, i64 0, i64 0))
  %174 = icmp ne i32 %173, 0
  br i1 %174, label %177, label %175

175:                                              ; preds = %169, %104
  %176 = load i32, i32* @FALSE, align 4
  store i32 %176, i32* %5, align 4
  br label %240

177:                                              ; preds = %169, %163, %157, %151, %145, %139, %133, %128, %114, %109
  br label %197

178:                                              ; preds = %87
  br label %197

179:                                              ; preds = %87
  %180 = load i8*, i8** %7, align 8
  %181 = load i64, i64* %8, align 8
  %182 = call i32 @imap_matchresp(i8* %180, i64 %181, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.6, i64 0, i64 0))
  %183 = icmp ne i32 %182, 0
  br i1 %183, label %186, label %184

184:                                              ; preds = %179
  %185 = load i32, i32* @FALSE, align 4
  store i32 %185, i32* %5, align 4
  br label %240

186:                                              ; preds = %179
  br label %197

187:                                              ; preds = %87
  %188 = load i8*, i8** %7, align 8
  %189 = load i64, i64* %8, align 8
  %190 = call i32 @imap_matchresp(i8* %188, i64 %189, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i64 0, i64 0))
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %194, label %192

192:                                              ; preds = %187
  %193 = load i32, i32* @FALSE, align 4
  store i32 %193, i32* %5, align 4
  br label %240

194:                                              ; preds = %187
  br label %197

195:                                              ; preds = %87
  %196 = load i32, i32* @FALSE, align 4
  store i32 %196, i32* %5, align 4
  br label %240

197:                                              ; preds = %194, %186, %178, %177, %98
  %198 = load i32*, i32** %9, align 8
  store i32 42, i32* %198, align 4
  %199 = load i32, i32* @TRUE, align 4
  store i32 %199, i32* %5, align 4
  br label %240

200:                                              ; preds = %83, %80
  %201 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %202 = icmp ne %struct.IMAP* %201, null
  br i1 %202, label %203, label %238

203:                                              ; preds = %200
  %204 = load %struct.IMAP*, %struct.IMAP** %10, align 8
  %205 = getelementptr inbounds %struct.IMAP, %struct.IMAP* %204, i32 0, i32 0
  %206 = load i8*, i8** %205, align 8
  %207 = icmp ne i8* %206, null
  br i1 %207, label %238, label %208

208:                                              ; preds = %203
  %209 = load i64, i64* %8, align 8
  %210 = icmp eq i64 %209, 3
  br i1 %210, label %211, label %217

211:                                              ; preds = %208
  %212 = load i8*, i8** %7, align 8
  %213 = getelementptr inbounds i8, i8* %212, i64 0
  %214 = load i8, i8* %213, align 1
  %215 = sext i8 %214 to i32
  %216 = icmp eq i32 %215, 43
  br i1 %216, label %224, label %217

217:                                              ; preds = %211, %208
  %218 = load i64, i64* %8, align 8
  %219 = icmp uge i64 %218, 2
  br i1 %219, label %220, label %238

220:                                              ; preds = %217
  %221 = load i8*, i8** %7, align 8
  %222 = call i32 @memcmp(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.14, i64 0, i64 0), i8* %221, i32 2)
  %223 = icmp ne i32 %222, 0
  br i1 %223, label %238, label %224

224:                                              ; preds = %220, %211
  %225 = load %struct.imap_conn*, %struct.imap_conn** %11, align 8
  %226 = getelementptr inbounds %struct.imap_conn, %struct.imap_conn* %225, i32 0, i32 1
  %227 = load i32, i32* %226, align 8
  switch i32 %227, label %230 [
    i32 133, label %228
    i32 134, label %228
  ]

228:                                              ; preds = %224, %224
  %229 = load i32*, i32** %9, align 8
  store i32 43, i32* %229, align 4
  br label %236

230:                                              ; preds = %224
  %231 = load %struct.connectdata*, %struct.connectdata** %6, align 8
  %232 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %231, i32 0, i32 0
  %233 = load %struct.TYPE_6__*, %struct.TYPE_6__** %232, align 8
  %234 = call i32 @failf(%struct.TYPE_6__* %233, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.15, i64 0, i64 0))
  %235 = load i32*, i32** %9, align 8
  store i32 -1, i32* %235, align 4
  br label %236

236:                                              ; preds = %230, %228
  %237 = load i32, i32* @TRUE, align 4
  store i32 %237, i32* %5, align 4
  br label %240

238:                                              ; preds = %220, %217, %203, %200
  %239 = load i32, i32* @FALSE, align 4
  store i32 %239, i32* %5, align 4
  br label %240

240:                                              ; preds = %238, %236, %197, %195, %192, %184, %175, %96, %78
  %241 = load i32, i32* %5, align 4
  ret i32 %241
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @memcmp(i8*, i8*, i32) #1

declare dso_local i32 @imap_matchresp(i8*, i64, i8*) #1

declare dso_local i32 @strcasecompare(i8*, i8*) #1

declare dso_local i32 @failf(%struct.TYPE_6__*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
