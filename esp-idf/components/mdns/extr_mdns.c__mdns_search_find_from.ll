; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_find_from.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_search_find_from.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i64, i64, %struct.TYPE_7__*, i32*, i32*, i32*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_8__*, i32* }
%struct.TYPE_9__ = type { i32, i32, i32 }

@SEARCH_OFF = common dso_local global i64 0, align 8
@MDNS_TYPE_A = common dso_local global i64 0, align 8
@MDNS_TYPE_AAAA = common dso_local global i64 0, align 8
@MDNS_TYPE_ANY = common dso_local global i64 0, align 8
@MDNS_TYPE_PTR = common dso_local global i64 0, align 8
@MDNS_TYPE_SRV = common dso_local global i64 0, align 8
@MDNS_TYPE_TXT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (%struct.TYPE_7__*, %struct.TYPE_9__*, i64, i64, i64)* @_mdns_search_find_from to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @_mdns_search_find_from(%struct.TYPE_7__* %0, %struct.TYPE_9__* %1, i64 %2, i64 %3, i64 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.TYPE_7__*, align 8
  %8 = alloca %struct.TYPE_9__*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.TYPE_8__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_9__* %1, %struct.TYPE_9__** %8, align 8
  store i64 %2, i64* %9, align 8
  store i64 %3, i64* %10, align 8
  store i64 %4, i64* %11, align 8
  store %struct.TYPE_8__* null, %struct.TYPE_8__** %12, align 8
  br label %13

13:                                               ; preds = %248, %212, %191, %169, %128, %84, %63, %22, %5
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %15 = icmp ne %struct.TYPE_7__* %14, null
  br i1 %15, label %16, label %252

16:                                               ; preds = %13
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %18 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SEARCH_OFF, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %23, i32 0, i32 2
  %25 = load %struct.TYPE_7__*, %struct.TYPE_7__** %24, align 8
  store %struct.TYPE_7__* %25, %struct.TYPE_7__** %7, align 8
  br label %13

26:                                               ; preds = %16
  %27 = load i64, i64* %9, align 8
  %28 = load i64, i64* @MDNS_TYPE_A, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %34, label %30

30:                                               ; preds = %26
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @MDNS_TYPE_AAAA, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %34, label %132

34:                                               ; preds = %30, %26
  %35 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %36 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @MDNS_TYPE_ANY, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %45

40:                                               ; preds = %34
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 4
  %43 = load i32*, i32** %42, align 8
  %44 = icmp ne i32* %43, null
  br i1 %44, label %63, label %45

45:                                               ; preds = %40, %34
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @MDNS_TYPE_ANY, align 8
  %50 = icmp ne i64 %48, %49
  br i1 %50, label %51, label %67

51:                                               ; preds = %45
  %52 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %53 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ne i64 %54, %55
  br i1 %56, label %57, label %67

57:                                               ; preds = %51
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %59 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %58, i32 0, i32 1
  %60 = load i64, i64* %59, align 8
  %61 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %62 = icmp ne i64 %60, %61
  br i1 %62, label %63, label %67

63:                                               ; preds = %57, %40
  %64 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %65 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %64, i32 0, i32 2
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  store %struct.TYPE_7__* %66, %struct.TYPE_7__** %7, align 8
  br label %13

67:                                               ; preds = %57, %51, %45
  %68 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %69 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %72 = icmp ne i64 %70, %71
  br i1 %72, label %73, label %88

73:                                               ; preds = %67
  %74 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %75 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %78 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %77, i32 0, i32 5
  %79 = load i32*, i32** %78, align 8
  %80 = call i64 @strcasecmp(i32 %76, i32* %79)
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %84, label %82

82:                                               ; preds = %73
  %83 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %83, %struct.TYPE_7__** %6, align 8
  br label %253

84:                                               ; preds = %73
  %85 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 2
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %86, align 8
  store %struct.TYPE_7__* %87, %struct.TYPE_7__** %7, align 8
  br label %13

88:                                               ; preds = %67
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %90 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i32 0, i32 6
  %91 = load %struct.TYPE_8__*, %struct.TYPE_8__** %90, align 8
  store %struct.TYPE_8__* %91, %struct.TYPE_8__** %12, align 8
  br label %92

92:                                               ; preds = %124, %88
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %94 = icmp ne %struct.TYPE_8__* %93, null
  br i1 %94, label %95, label %128

95:                                               ; preds = %92
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %97 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* %10, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %124

101:                                              ; preds = %95
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 1
  %104 = load i64, i64* %103, align 8
  %105 = load i64, i64* %11, align 8
  %106 = icmp eq i64 %104, %105
  br i1 %106, label %107, label %124

107:                                              ; preds = %101
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 3
  %110 = load i32*, i32** %109, align 8
  %111 = call i32 @_str_null_or_empty(i32* %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %124, label %113

113:                                              ; preds = %107
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 2
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %118 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %117, i32 0, i32 3
  %119 = load i32*, i32** %118, align 8
  %120 = call i64 @strcasecmp(i32 %116, i32* %119)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %124, label %122

122:                                              ; preds = %113
  %123 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %123, %struct.TYPE_7__** %6, align 8
  br label %253

124:                                              ; preds = %113, %107, %101, %95
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %12, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 2
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %126, align 8
  store %struct.TYPE_8__* %127, %struct.TYPE_8__** %12, align 8
  br label %92

128:                                              ; preds = %92
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 2
  %131 = load %struct.TYPE_7__*, %struct.TYPE_7__** %130, align 8
  store %struct.TYPE_7__* %131, %struct.TYPE_7__** %7, align 8
  br label %13

132:                                              ; preds = %30
  %133 = load i64, i64* %9, align 8
  %134 = load i64, i64* @MDNS_TYPE_SRV, align 8
  %135 = icmp eq i64 %133, %134
  br i1 %135, label %140, label %136

136:                                              ; preds = %132
  %137 = load i64, i64* %9, align 8
  %138 = load i64, i64* @MDNS_TYPE_TXT, align 8
  %139 = icmp eq i64 %137, %138
  br i1 %139, label %140, label %218

140:                                              ; preds = %136, %132
  %141 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %142 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load i64, i64* @MDNS_TYPE_ANY, align 8
  %145 = icmp eq i64 %143, %144
  br i1 %145, label %146, label %151

146:                                              ; preds = %140
  %147 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %148 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %147, i32 0, i32 4
  %149 = load i32*, i32** %148, align 8
  %150 = icmp eq i32* %149, null
  br i1 %150, label %169, label %151

151:                                              ; preds = %146, %140
  %152 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 1
  %154 = load i64, i64* %153, align 8
  %155 = load i64, i64* @MDNS_TYPE_ANY, align 8
  %156 = icmp ne i64 %154, %155
  br i1 %156, label %157, label %173

157:                                              ; preds = %151
  %158 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %159 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %158, i32 0, i32 1
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %9, align 8
  %162 = icmp ne i64 %160, %161
  br i1 %162, label %163, label %173

163:                                              ; preds = %157
  %164 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %165 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %164, i32 0, i32 1
  %166 = load i64, i64* %165, align 8
  %167 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %168 = icmp ne i64 %166, %167
  br i1 %168, label %169, label %173

169:                                              ; preds = %163, %146
  %170 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %171 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %170, i32 0, i32 2
  %172 = load %struct.TYPE_7__*, %struct.TYPE_7__** %171, align 8
  store %struct.TYPE_7__* %172, %struct.TYPE_7__** %7, align 8
  br label %13

173:                                              ; preds = %163, %157, %151
  %174 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %175 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %178 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %177, i32 0, i32 4
  %179 = load i32*, i32** %178, align 8
  %180 = call i64 @strcasecmp(i32 %176, i32* %179)
  %181 = icmp ne i64 %180, 0
  br i1 %181, label %191, label %182

182:                                              ; preds = %173
  %183 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %184 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 4
  %186 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %187 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %186, i32 0, i32 3
  %188 = load i32*, i32** %187, align 8
  %189 = call i64 @strcasecmp(i32 %185, i32* %188)
  %190 = icmp ne i64 %189, 0
  br i1 %190, label %191, label %195

191:                                              ; preds = %182, %173
  %192 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %193 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %192, i32 0, i32 2
  %194 = load %struct.TYPE_7__*, %struct.TYPE_7__** %193, align 8
  store %struct.TYPE_7__* %194, %struct.TYPE_7__** %7, align 8
  br label %13

195:                                              ; preds = %182
  %196 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %197 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %196, i32 0, i32 1
  %198 = load i64, i64* %197, align 8
  %199 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %200 = icmp ne i64 %198, %199
  br i1 %200, label %201, label %216

201:                                              ; preds = %195
  %202 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %203 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %202, i32 0, i32 2
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %206 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %205, i32 0, i32 5
  %207 = load i32*, i32** %206, align 8
  %208 = call i64 @strcasecmp(i32 %204, i32* %207)
  %209 = icmp ne i64 %208, 0
  br i1 %209, label %212, label %210

210:                                              ; preds = %201
  %211 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %211, %struct.TYPE_7__** %6, align 8
  br label %253

212:                                              ; preds = %201
  %213 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %214 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %213, i32 0, i32 2
  %215 = load %struct.TYPE_7__*, %struct.TYPE_7__** %214, align 8
  store %struct.TYPE_7__* %215, %struct.TYPE_7__** %7, align 8
  br label %13

216:                                              ; preds = %195
  %217 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %217, %struct.TYPE_7__** %6, align 8
  br label %253

218:                                              ; preds = %136
  %219 = load i64, i64* %9, align 8
  %220 = load i64, i64* @MDNS_TYPE_PTR, align 8
  %221 = icmp eq i64 %219, %220
  br i1 %221, label %222, label %248

222:                                              ; preds = %218
  %223 = load i64, i64* %9, align 8
  %224 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %225 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %224, i32 0, i32 1
  %226 = load i64, i64* %225, align 8
  %227 = icmp eq i64 %223, %226
  br i1 %227, label %228, label %248

228:                                              ; preds = %222
  %229 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %230 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %229, i32 0, i32 1
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %233 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %232, i32 0, i32 4
  %234 = load i32*, i32** %233, align 8
  %235 = call i64 @strcasecmp(i32 %231, i32* %234)
  %236 = icmp ne i64 %235, 0
  br i1 %236, label %248, label %237

237:                                              ; preds = %228
  %238 = load %struct.TYPE_9__*, %struct.TYPE_9__** %8, align 8
  %239 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %238, i32 0, i32 0
  %240 = load i32, i32* %239, align 4
  %241 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %242 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %241, i32 0, i32 3
  %243 = load i32*, i32** %242, align 8
  %244 = call i64 @strcasecmp(i32 %240, i32* %243)
  %245 = icmp ne i64 %244, 0
  br i1 %245, label %248, label %246

246:                                              ; preds = %237
  %247 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  store %struct.TYPE_7__* %247, %struct.TYPE_7__** %6, align 8
  br label %253

248:                                              ; preds = %237, %228, %222, %218
  %249 = load %struct.TYPE_7__*, %struct.TYPE_7__** %7, align 8
  %250 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %249, i32 0, i32 2
  %251 = load %struct.TYPE_7__*, %struct.TYPE_7__** %250, align 8
  store %struct.TYPE_7__* %251, %struct.TYPE_7__** %7, align 8
  br label %13

252:                                              ; preds = %13
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %253

253:                                              ; preds = %252, %246, %216, %210, %122, %82
  %254 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %254
}

declare dso_local i64 @strcasecmp(i32, i32*) #1

declare dso_local i32 @_str_null_or_empty(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
