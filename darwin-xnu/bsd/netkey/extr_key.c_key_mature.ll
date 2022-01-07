; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_mature.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_mature.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.secasvar = type { i32, i32, %struct.TYPE_8__*, %struct.TYPE_7__*, i32, i32, %struct.TYPE_6__* }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32 }
%struct.ah_algorithm = type { i32, i32, i64 (%struct.secasvar*)* }
%struct.ipcomp_algorithm = type { i32 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"key_mature: illegal range of SPI %u.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SADB_X_EXT_OLD = common dso_local global i32 0, align 4
@SADB_X_EXT_DERIV = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [54 x i8] c"key_mature: invalid flag (derived) given to old-esp.\0A\00", align 1
@SADB_AALG_NONE = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [52 x i8] c"key_mature: invalid flag (derived) given to AH SA.\0A\00", align 1
@SADB_EALG_NONE = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [46 x i8] c"key_mature: protocol and algorithm mismated.\0A\00", align 1
@SADB_X_EXT_RAWCPI = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [37 x i8] c"key_mature: invalid cpi for IPComp.\0A\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"key_mature: Invalid satype.\0A\00", align 1
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [47 x i8] c"key_mature: unknown authentication algorithm.\0A\00", align 1
@.str.7 = private unnamed_addr constant [54 x i8] c"key_mature: invalid AH key length %d (%d-%d allowed)\0A\00", align 1
@SADB_SATYPE_AH = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [41 x i8] c"key_mature: no satisfy algorithm for AH\0A\00", align 1
@.str.9 = private unnamed_addr constant [53 x i8] c"key_mature: ESP not supported in this configuration\0A\00", align 1
@.str.10 = private unnamed_addr constant [44 x i8] c"key_mature: unknown compression algorithm.\0A\00", align 1
@SADB_SASTATE_MATURE = common dso_local global i32 0, align 4
@SADB_SATYPE_ESP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.secasvar*)* @key_mature to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_mature(%struct.secasvar* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.secasvar*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ah_algorithm*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ipcomp_algorithm*, align 8
  store %struct.secasvar* %0, %struct.secasvar** %3, align 8
  store i32 0, i32* %5, align 4
  store i32 0, i32* %6, align 4
  store i32 0, i32* %4, align 4
  %10 = load i32, i32* @sadb_mutex, align 4
  %11 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32 %10, i32 %11)
  %13 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %14 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %13, i32 0, i32 6
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  switch i32 %18, label %34 [
    i32 129, label %19
    i32 130, label %19
  ]

19:                                               ; preds = %1, %1
  %20 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %21 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @ntohl(i32 %22)
  %24 = icmp sle i32 %23, 255
  br i1 %24, label %25, label %33

25:                                               ; preds = %19
  %26 = load i32, i32* @LOG_DEBUG, align 4
  %27 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %28 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %27, i32 0, i32 5
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @ntohl(i32 %29)
  %31 = call i32 @ipseclog(i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  store i32 %32, i32* %2, align 4
  br label %230

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %1, %33
  %35 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %36 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %35, i32 0, i32 6
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  switch i32 %40, label %118 [
    i32 129, label %41
    i32 130, label %68
    i32 128, label %90
  ]

41:                                               ; preds = %34
  %42 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %43 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = load i32, i32* @SADB_X_EXT_OLD, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %59

48:                                               ; preds = %41
  %49 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %50 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 8
  %52 = load i32, i32* @SADB_X_EXT_DERIV, align 4
  %53 = and i32 %51, %52
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %59

55:                                               ; preds = %48
  %56 = load i32, i32* @LOG_DEBUG, align 4
  %57 = call i32 @ipseclog(i32 ptrtoint ([54 x i8]* @.str.1 to i32))
  %58 = load i32, i32* @EINVAL, align 4
  store i32 %58, i32* %2, align 4
  br label %230

59:                                               ; preds = %48, %41
  %60 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %61 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %60, i32 0, i32 4
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @SADB_AALG_NONE, align 4
  %64 = icmp eq i32 %62, %63
  br i1 %64, label %65, label %66

65:                                               ; preds = %59
  store i32 1, i32* %5, align 4
  br label %67

66:                                               ; preds = %59
  store i32 3, i32* %5, align 4
  br label %67

67:                                               ; preds = %66, %65
  store i32 1, i32* %6, align 4
  br label %122

68:                                               ; preds = %34
  %69 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %70 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @SADB_X_EXT_DERIV, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %79

75:                                               ; preds = %68
  %76 = load i32, i32* @LOG_DEBUG, align 4
  %77 = call i32 @ipseclog(i32 ptrtoint ([52 x i8]* @.str.2 to i32))
  %78 = load i32, i32* @EINVAL, align 4
  store i32 %78, i32* %2, align 4
  br label %230

79:                                               ; preds = %68
  %80 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %81 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 4
  %83 = load i32, i32* @SADB_EALG_NONE, align 4
  %84 = icmp ne i32 %82, %83
  br i1 %84, label %85, label %89

85:                                               ; preds = %79
  %86 = load i32, i32* @LOG_DEBUG, align 4
  %87 = call i32 @ipseclog(i32 ptrtoint ([46 x i8]* @.str.3 to i32))
  %88 = load i32, i32* @EINVAL, align 4
  store i32 %88, i32* %2, align 4
  br label %230

89:                                               ; preds = %79
  store i32 2, i32* %5, align 4
  store i32 2, i32* %6, align 4
  br label %122

90:                                               ; preds = %34
  %91 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %92 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %91, i32 0, i32 4
  %93 = load i32, i32* %92, align 8
  %94 = load i32, i32* @SADB_AALG_NONE, align 4
  %95 = icmp ne i32 %93, %94
  br i1 %95, label %96, label %100

96:                                               ; preds = %90
  %97 = load i32, i32* @LOG_DEBUG, align 4
  %98 = call i32 @ipseclog(i32 ptrtoint ([46 x i8]* @.str.3 to i32))
  %99 = load i32, i32* @EINVAL, align 4
  store i32 %99, i32* %2, align 4
  br label %230

100:                                              ; preds = %90
  %101 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %102 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @SADB_X_EXT_RAWCPI, align 4
  %105 = and i32 %103, %104
  %106 = icmp eq i32 %105, 0
  br i1 %106, label %107, label %117

107:                                              ; preds = %100
  %108 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %109 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %108, i32 0, i32 5
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @ntohl(i32 %110)
  %112 = icmp sge i32 %111, 65536
  br i1 %112, label %113, label %117

113:                                              ; preds = %107
  %114 = load i32, i32* @LOG_DEBUG, align 4
  %115 = call i32 @ipseclog(i32 ptrtoint ([37 x i8]* @.str.4 to i32))
  %116 = load i32, i32* @EINVAL, align 4
  store i32 %116, i32* %2, align 4
  br label %230

117:                                              ; preds = %107, %100
  store i32 4, i32* %5, align 4
  store i32 4, i32* %6, align 4
  br label %122

118:                                              ; preds = %34
  %119 = load i32, i32* @LOG_DEBUG, align 4
  %120 = call i32 @ipseclog(i32 ptrtoint ([29 x i8]* @.str.5 to i32))
  %121 = load i32, i32* @EPROTONOSUPPORT, align 4
  store i32 %121, i32* %2, align 4
  br label %230

122:                                              ; preds = %117, %89, %67
  %123 = load i32, i32* %5, align 4
  %124 = and i32 %123, 2
  %125 = icmp ne i32 %124, 0
  br i1 %125, label %126, label %202

126:                                              ; preds = %122
  %127 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %128 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %127, i32 0, i32 4
  %129 = load i32, i32* %128, align 8
  %130 = call %struct.ah_algorithm* @ah_algorithm_lookup(i32 %129)
  store %struct.ah_algorithm* %130, %struct.ah_algorithm** %7, align 8
  %131 = load %struct.ah_algorithm*, %struct.ah_algorithm** %7, align 8
  %132 = icmp ne %struct.ah_algorithm* %131, null
  br i1 %132, label %137, label %133

133:                                              ; preds = %126
  %134 = load i32, i32* @LOG_DEBUG, align 4
  %135 = call i32 @ipseclog(i32 ptrtoint ([47 x i8]* @.str.6 to i32))
  %136 = load i32, i32* @EINVAL, align 4
  store i32 %136, i32* %2, align 4
  br label %230

137:                                              ; preds = %126
  %138 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %139 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %138, i32 0, i32 3
  %140 = load %struct.TYPE_7__*, %struct.TYPE_7__** %139, align 8
  %141 = icmp ne %struct.TYPE_7__* %140, null
  br i1 %141, label %142, label %148

142:                                              ; preds = %137
  %143 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %144 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %143, i32 0, i32 3
  %145 = load %struct.TYPE_7__*, %struct.TYPE_7__** %144, align 8
  %146 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 4
  store i32 %147, i32* %8, align 4
  br label %149

148:                                              ; preds = %137
  store i32 0, i32* %8, align 4
  br label %149

149:                                              ; preds = %148, %142
  %150 = load i32, i32* %8, align 4
  %151 = load %struct.ah_algorithm*, %struct.ah_algorithm** %7, align 8
  %152 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 8
  %154 = icmp slt i32 %150, %153
  br i1 %154, label %161, label %155

155:                                              ; preds = %149
  %156 = load %struct.ah_algorithm*, %struct.ah_algorithm** %7, align 8
  %157 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %156, i32 0, i32 1
  %158 = load i32, i32* %157, align 4
  %159 = load i32, i32* %8, align 4
  %160 = icmp slt i32 %158, %159
  br i1 %160, label %161, label %172

161:                                              ; preds = %155, %149
  %162 = load i32, i32* @LOG_DEBUG, align 4
  %163 = load i32, i32* %8, align 4
  %164 = load %struct.ah_algorithm*, %struct.ah_algorithm** %7, align 8
  %165 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.ah_algorithm*, %struct.ah_algorithm** %7, align 8
  %168 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 4
  %170 = call i32 @ipseclog(i32 %169)
  %171 = load i32, i32* @EINVAL, align 4
  store i32 %171, i32* %2, align 4
  br label %230

172:                                              ; preds = %155
  %173 = load %struct.ah_algorithm*, %struct.ah_algorithm** %7, align 8
  %174 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %173, i32 0, i32 2
  %175 = load i64 (%struct.secasvar*)*, i64 (%struct.secasvar*)** %174, align 8
  %176 = icmp ne i64 (%struct.secasvar*)* %175, null
  br i1 %176, label %177, label %189

177:                                              ; preds = %172
  %178 = load %struct.ah_algorithm*, %struct.ah_algorithm** %7, align 8
  %179 = getelementptr inbounds %struct.ah_algorithm, %struct.ah_algorithm* %178, i32 0, i32 2
  %180 = load i64 (%struct.secasvar*)*, i64 (%struct.secasvar*)** %179, align 8
  %181 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %182 = call i64 %180(%struct.secasvar* %181)
  %183 = icmp ne i64 %182, 0
  br i1 %183, label %184, label %186

184:                                              ; preds = %177
  %185 = load i32, i32* @EINVAL, align 4
  store i32 %185, i32* %2, align 4
  br label %230

186:                                              ; preds = %177
  %187 = load i32, i32* @SADB_SATYPE_AH, align 4
  store i32 %187, i32* %4, align 4
  br label %188

188:                                              ; preds = %186
  br label %189

189:                                              ; preds = %188, %172
  %190 = load i32, i32* %6, align 4
  %191 = and i32 %190, 2
  %192 = icmp ne i32 %191, 0
  br i1 %192, label %193, label %201

193:                                              ; preds = %189
  %194 = load i32, i32* %4, align 4
  %195 = load i32, i32* @SADB_SATYPE_AH, align 4
  %196 = icmp ne i32 %194, %195
  br i1 %196, label %197, label %201

197:                                              ; preds = %193
  %198 = load i32, i32* @LOG_DEBUG, align 4
  %199 = call i32 @ipseclog(i32 ptrtoint ([41 x i8]* @.str.8 to i32))
  %200 = load i32, i32* @EINVAL, align 4
  store i32 %200, i32* %2, align 4
  br label %230

201:                                              ; preds = %193, %189
  br label %202

202:                                              ; preds = %201, %122
  %203 = load i32, i32* %5, align 4
  %204 = and i32 %203, 1
  %205 = icmp ne i32 %204, 0
  br i1 %205, label %206, label %210

206:                                              ; preds = %202
  %207 = load i32, i32* @LOG_DEBUG, align 4
  %208 = call i32 @ipseclog(i32 ptrtoint ([53 x i8]* @.str.9 to i32))
  %209 = load i32, i32* @EINVAL, align 4
  store i32 %209, i32* %2, align 4
  br label %230

210:                                              ; preds = %202
  %211 = load i32, i32* %5, align 4
  %212 = and i32 %211, 4
  %213 = icmp ne i32 %212, 0
  br i1 %213, label %214, label %226

214:                                              ; preds = %210
  %215 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %216 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %215, i32 0, i32 1
  %217 = load i32, i32* %216, align 4
  %218 = call %struct.ipcomp_algorithm* @ipcomp_algorithm_lookup(i32 %217)
  store %struct.ipcomp_algorithm* %218, %struct.ipcomp_algorithm** %9, align 8
  %219 = load %struct.ipcomp_algorithm*, %struct.ipcomp_algorithm** %9, align 8
  %220 = icmp ne %struct.ipcomp_algorithm* %219, null
  br i1 %220, label %225, label %221

221:                                              ; preds = %214
  %222 = load i32, i32* @LOG_DEBUG, align 4
  %223 = call i32 @ipseclog(i32 ptrtoint ([44 x i8]* @.str.10 to i32))
  %224 = load i32, i32* @EINVAL, align 4
  store i32 %224, i32* %2, align 4
  br label %230

225:                                              ; preds = %214
  br label %226

226:                                              ; preds = %225, %210
  %227 = load %struct.secasvar*, %struct.secasvar** %3, align 8
  %228 = load i32, i32* @SADB_SASTATE_MATURE, align 4
  %229 = call i32 @key_sa_chgstate(%struct.secasvar* %227, i32 %228)
  store i32 0, i32* %2, align 4
  br label %230

230:                                              ; preds = %226, %221, %206, %197, %184, %161, %133, %118, %113, %96, %85, %75, %55, %25
  %231 = load i32, i32* %2, align 4
  ret i32 %231
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @ipseclog(i32) #1

declare dso_local %struct.ah_algorithm* @ah_algorithm_lookup(i32) #1

declare dso_local %struct.ipcomp_algorithm* @ipcomp_algorithm_lookup(i32) #1

declare dso_local i32 @key_sa_chgstate(%struct.secasvar*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
