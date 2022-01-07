; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_update.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.sadb_msghdr = type { i32*, %struct.TYPE_10__*, i32** }
%struct.TYPE_10__ = type { i64, i32, i32 }
%struct.sadb_sa = type { i64 }
%struct.sadb_address = type { i32 }
%struct.TYPE_11__ = type { i32 }
%struct.secasindex = type { i32 }
%struct.secashead = type { i32 }
%struct.secasvar = type { i64, i32, %struct.TYPE_9__*, %struct.socket*, i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64, i64, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.sadb_x_sa2 = type { i64, i64, i32 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c"key_update: NULL pointer is passed.\0A\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"key_update: invalid satype is passed.\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@SADB_EXT_SA = common dso_local global i64 0, align 8
@SADB_EXT_ADDRESS_SRC = common dso_local global i64 0, align 8
@SADB_EXT_ADDRESS_DST = common dso_local global i64 0, align 8
@SADB_SATYPE_ESP = common dso_local global i64 0, align 8
@SADB_EXT_KEY_ENCRYPT = common dso_local global i64 0, align 8
@SADB_SATYPE_AH = common dso_local global i64 0, align 8
@SADB_EXT_KEY_AUTH = common dso_local global i64 0, align 8
@SADB_EXT_LIFETIME_HARD = common dso_local global i64 0, align 8
@SADB_EXT_LIFETIME_SOFT = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [40 x i8] c"key_update: invalid message is passed.\0A\00", align 1
@SADB_X_EXT_SA2 = common dso_local global i64 0, align 8
@IPSEC_MODE_ANY = common dso_local global i32 0, align 4
@SADB_X_EXT_IPSECIF = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [32 x i8] c"key_update: no SA index found.\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [41 x i8] c"key_update: no such a SA found (spi:%u)\0A\00", align 1
@.str.5 = private unnamed_addr constant [50 x i8] c"key_update: protocol mismatched (DB=%u param=%u)\0A\00", align 1
@.str.6 = private unnamed_addr constant [45 x i8] c"key_update: pid mismatched (DB:%u param:%u)\0A\00", align 1
@KEY_SADB_LOCKED = common dso_local global i32 0, align 4
@SADB_X_EXT_SA2_DELETE_ON_DETACH = common dso_local global i64 0, align 8
@SADB_X_EXT_NATT_MULTIPLEUSERS = common dso_local global i32 0, align 4
@IPSEC_MODE_TRANSPORT = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@.str.7 = private unnamed_addr constant [29 x i8] c"key_update: No more memory.\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@KEY_SENDUP_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, %struct.sadb_msghdr*)* @key_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_update(%struct.socket* %0, %struct.mbuf* %1, %struct.sadb_msghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sadb_msghdr*, align 8
  %8 = alloca %struct.sadb_sa*, align 8
  %9 = alloca %struct.sadb_address*, align 8
  %10 = alloca %struct.sadb_address*, align 8
  %11 = alloca %struct.TYPE_11__*, align 8
  %12 = alloca %struct.secasindex, align 4
  %13 = alloca %struct.secashead*, align 8
  %14 = alloca %struct.secasvar*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i32, align 4
  %20 = alloca %struct.mbuf*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sadb_msghdr* %2, %struct.sadb_msghdr** %7, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %11, align 8
  %21 = load i32, i32* @sadb_mutex, align 4
  %22 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %23 = call i32 @LCK_MTX_ASSERT(i32 %21, i32 %22)
  %24 = load %struct.socket*, %struct.socket** %5, align 8
  %25 = icmp eq %struct.socket* %24, null
  br i1 %25, label %37, label %26

26:                                               ; preds = %3
  %27 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %28 = icmp eq %struct.mbuf* %27, null
  br i1 %28, label %37, label %29

29:                                               ; preds = %26
  %30 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %31 = icmp eq %struct.sadb_msghdr* %30, null
  br i1 %31, label %37, label %32

32:                                               ; preds = %29
  %33 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %34 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %33, i32 0, i32 1
  %35 = load %struct.TYPE_10__*, %struct.TYPE_10__** %34, align 8
  %36 = icmp eq %struct.TYPE_10__* %35, null
  br i1 %36, label %37, label %39

37:                                               ; preds = %32, %29, %26, %3
  %38 = call i32 @panic(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0))
  br label %39

39:                                               ; preds = %37, %32
  %40 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %41 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %40, i32 0, i32 1
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i64 @key_satype2proto(i64 %44)
  store i64 %45, i64* %15, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %54

47:                                               ; preds = %39
  %48 = load i32, i32* @LOG_DEBUG, align 4
  %49 = call i32 @ipseclog(i32 ptrtoint ([39 x i8]* @.str.1 to i32))
  %50 = load %struct.socket*, %struct.socket** %5, align 8
  %51 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %52 = load i32, i32* @EINVAL, align 4
  %53 = call i32 @key_senderror(%struct.socket* %50, %struct.mbuf* %51, i32 %52)
  store i32 %53, i32* %4, align 4
  br label %466

54:                                               ; preds = %39
  %55 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %56 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %55, i32 0, i32 2
  %57 = load i32**, i32*** %56, align 8
  %58 = load i64, i64* @SADB_EXT_SA, align 8
  %59 = getelementptr inbounds i32*, i32** %57, i64 %58
  %60 = load i32*, i32** %59, align 8
  %61 = icmp eq i32* %60, null
  br i1 %61, label %142, label %62

62:                                               ; preds = %54
  %63 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %64 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %63, i32 0, i32 2
  %65 = load i32**, i32*** %64, align 8
  %66 = load i64, i64* @SADB_EXT_ADDRESS_SRC, align 8
  %67 = getelementptr inbounds i32*, i32** %65, i64 %66
  %68 = load i32*, i32** %67, align 8
  %69 = icmp eq i32* %68, null
  br i1 %69, label %142, label %70

70:                                               ; preds = %62
  %71 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %72 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %71, i32 0, i32 2
  %73 = load i32**, i32*** %72, align 8
  %74 = load i64, i64* @SADB_EXT_ADDRESS_DST, align 8
  %75 = getelementptr inbounds i32*, i32** %73, i64 %74
  %76 = load i32*, i32** %75, align 8
  %77 = icmp eq i32* %76, null
  br i1 %77, label %142, label %78

78:                                               ; preds = %70
  %79 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %80 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %79, i32 0, i32 1
  %81 = load %struct.TYPE_10__*, %struct.TYPE_10__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %81, i32 0, i32 0
  %83 = load i64, i64* %82, align 8
  %84 = load i64, i64* @SADB_SATYPE_ESP, align 8
  %85 = icmp eq i64 %83, %84
  br i1 %85, label %86, label %94

86:                                               ; preds = %78
  %87 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %88 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %87, i32 0, i32 2
  %89 = load i32**, i32*** %88, align 8
  %90 = load i64, i64* @SADB_EXT_KEY_ENCRYPT, align 8
  %91 = getelementptr inbounds i32*, i32** %89, i64 %90
  %92 = load i32*, i32** %91, align 8
  %93 = icmp eq i32* %92, null
  br i1 %93, label %142, label %94

94:                                               ; preds = %86, %78
  %95 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %96 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %95, i32 0, i32 1
  %97 = load %struct.TYPE_10__*, %struct.TYPE_10__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @SADB_SATYPE_AH, align 8
  %101 = icmp eq i64 %99, %100
  br i1 %101, label %102, label %110

102:                                              ; preds = %94
  %103 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %104 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %103, i32 0, i32 2
  %105 = load i32**, i32*** %104, align 8
  %106 = load i64, i64* @SADB_EXT_KEY_AUTH, align 8
  %107 = getelementptr inbounds i32*, i32** %105, i64 %106
  %108 = load i32*, i32** %107, align 8
  %109 = icmp eq i32* %108, null
  br i1 %109, label %142, label %110

110:                                              ; preds = %102, %94
  %111 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %112 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %111, i32 0, i32 2
  %113 = load i32**, i32*** %112, align 8
  %114 = load i64, i64* @SADB_EXT_LIFETIME_HARD, align 8
  %115 = getelementptr inbounds i32*, i32** %113, i64 %114
  %116 = load i32*, i32** %115, align 8
  %117 = icmp ne i32* %116, null
  br i1 %117, label %118, label %126

118:                                              ; preds = %110
  %119 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %120 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %119, i32 0, i32 2
  %121 = load i32**, i32*** %120, align 8
  %122 = load i64, i64* @SADB_EXT_LIFETIME_SOFT, align 8
  %123 = getelementptr inbounds i32*, i32** %121, i64 %122
  %124 = load i32*, i32** %123, align 8
  %125 = icmp eq i32* %124, null
  br i1 %125, label %142, label %126

126:                                              ; preds = %118, %110
  %127 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %128 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %127, i32 0, i32 2
  %129 = load i32**, i32*** %128, align 8
  %130 = load i64, i64* @SADB_EXT_LIFETIME_HARD, align 8
  %131 = getelementptr inbounds i32*, i32** %129, i64 %130
  %132 = load i32*, i32** %131, align 8
  %133 = icmp eq i32* %132, null
  br i1 %133, label %134, label %149

134:                                              ; preds = %126
  %135 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %136 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %135, i32 0, i32 2
  %137 = load i32**, i32*** %136, align 8
  %138 = load i64, i64* @SADB_EXT_LIFETIME_SOFT, align 8
  %139 = getelementptr inbounds i32*, i32** %137, i64 %138
  %140 = load i32*, i32** %139, align 8
  %141 = icmp ne i32* %140, null
  br i1 %141, label %142, label %149

142:                                              ; preds = %134, %118, %102, %86, %70, %62, %54
  %143 = load i32, i32* @LOG_DEBUG, align 4
  %144 = call i32 @ipseclog(i32 ptrtoint ([40 x i8]* @.str.2 to i32))
  %145 = load %struct.socket*, %struct.socket** %5, align 8
  %146 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %147 = load i32, i32* @EINVAL, align 4
  %148 = call i32 @key_senderror(%struct.socket* %145, %struct.mbuf* %146, i32 %147)
  store i32 %148, i32* %4, align 4
  br label %466

149:                                              ; preds = %134, %126
  %150 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %151 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %150, i32 0, i32 0
  %152 = load i32*, i32** %151, align 8
  %153 = load i64, i64* @SADB_EXT_SA, align 8
  %154 = getelementptr inbounds i32, i32* %152, i64 %153
  %155 = load i32, i32* %154, align 4
  %156 = sext i32 %155 to i64
  %157 = icmp ult i64 %156, 8
  br i1 %157, label %176, label %158

158:                                              ; preds = %149
  %159 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %160 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %159, i32 0, i32 0
  %161 = load i32*, i32** %160, align 8
  %162 = load i64, i64* @SADB_EXT_ADDRESS_SRC, align 8
  %163 = getelementptr inbounds i32, i32* %161, i64 %162
  %164 = load i32, i32* %163, align 4
  %165 = sext i32 %164 to i64
  %166 = icmp ult i64 %165, 4
  br i1 %166, label %176, label %167

167:                                              ; preds = %158
  %168 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %169 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %168, i32 0, i32 0
  %170 = load i32*, i32** %169, align 8
  %171 = load i64, i64* @SADB_EXT_ADDRESS_DST, align 8
  %172 = getelementptr inbounds i32, i32* %170, i64 %171
  %173 = load i32, i32* %172, align 4
  %174 = sext i32 %173 to i64
  %175 = icmp ult i64 %174, 4
  br i1 %175, label %176, label %183

176:                                              ; preds = %167, %158, %149
  %177 = load i32, i32* @LOG_DEBUG, align 4
  %178 = call i32 @ipseclog(i32 ptrtoint ([40 x i8]* @.str.2 to i32))
  %179 = load %struct.socket*, %struct.socket** %5, align 8
  %180 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %181 = load i32, i32* @EINVAL, align 4
  %182 = call i32 @key_senderror(%struct.socket* %179, %struct.mbuf* %180, i32 %181)
  store i32 %182, i32* %4, align 4
  br label %466

183:                                              ; preds = %167
  %184 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %185 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %184, i32 0, i32 2
  %186 = load i32**, i32*** %185, align 8
  %187 = load i64, i64* @SADB_X_EXT_SA2, align 8
  %188 = getelementptr inbounds i32*, i32** %186, i64 %187
  %189 = load i32*, i32** %188, align 8
  %190 = icmp ne i32* %189, null
  br i1 %190, label %191, label %222

191:                                              ; preds = %183
  %192 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %193 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %192, i32 0, i32 2
  %194 = load i32**, i32*** %193, align 8
  %195 = load i64, i64* @SADB_X_EXT_SA2, align 8
  %196 = getelementptr inbounds i32*, i32** %194, i64 %195
  %197 = load i32*, i32** %196, align 8
  %198 = bitcast i32* %197 to i8*
  %199 = bitcast i8* %198 to %struct.sadb_x_sa2*
  %200 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %199, i32 0, i32 2
  %201 = load i32, i32* %200, align 8
  store i32 %201, i32* %16, align 4
  %202 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %203 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %202, i32 0, i32 2
  %204 = load i32**, i32*** %203, align 8
  %205 = load i64, i64* @SADB_X_EXT_SA2, align 8
  %206 = getelementptr inbounds i32*, i32** %204, i64 %205
  %207 = load i32*, i32** %206, align 8
  %208 = bitcast i32* %207 to i8*
  %209 = bitcast i8* %208 to %struct.sadb_x_sa2*
  %210 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %209, i32 0, i32 1
  %211 = load i64, i64* %210, align 8
  store i64 %211, i64* %17, align 8
  %212 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %213 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %212, i32 0, i32 2
  %214 = load i32**, i32*** %213, align 8
  %215 = load i64, i64* @SADB_X_EXT_SA2, align 8
  %216 = getelementptr inbounds i32*, i32** %214, i64 %215
  %217 = load i32*, i32** %216, align 8
  %218 = bitcast i32* %217 to i8*
  %219 = bitcast i8* %218 to %struct.sadb_x_sa2*
  %220 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %219, i32 0, i32 0
  %221 = load i64, i64* %220, align 8
  store i64 %221, i64* %18, align 8
  br label %224

222:                                              ; preds = %183
  %223 = load i32, i32* @IPSEC_MODE_ANY, align 4
  store i32 %223, i32* %16, align 4
  store i64 0, i64* %17, align 8
  store i64 0, i64* %18, align 8
  br label %224

224:                                              ; preds = %222, %191
  %225 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %226 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %225, i32 0, i32 2
  %227 = load i32**, i32*** %226, align 8
  %228 = load i64, i64* @SADB_EXT_SA, align 8
  %229 = getelementptr inbounds i32*, i32** %227, i64 %228
  %230 = load i32*, i32** %229, align 8
  %231 = bitcast i32* %230 to i8*
  %232 = bitcast i8* %231 to %struct.sadb_sa*
  store %struct.sadb_sa* %232, %struct.sadb_sa** %8, align 8
  %233 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %234 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %233, i32 0, i32 2
  %235 = load i32**, i32*** %234, align 8
  %236 = load i64, i64* @SADB_EXT_ADDRESS_SRC, align 8
  %237 = getelementptr inbounds i32*, i32** %235, i64 %236
  %238 = load i32*, i32** %237, align 8
  %239 = bitcast i32* %238 to %struct.sadb_address*
  store %struct.sadb_address* %239, %struct.sadb_address** %9, align 8
  %240 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %241 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %240, i32 0, i32 2
  %242 = load i32**, i32*** %241, align 8
  %243 = load i64, i64* @SADB_EXT_ADDRESS_DST, align 8
  %244 = getelementptr inbounds i32*, i32** %242, i64 %243
  %245 = load i32*, i32** %244, align 8
  %246 = bitcast i32* %245 to %struct.sadb_address*
  store %struct.sadb_address* %246, %struct.sadb_address** %10, align 8
  %247 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %248 = load i32, i32* @SADB_X_EXT_IPSECIF, align 4
  %249 = call %struct.TYPE_11__* @key_get_ipsec_if_from_message(%struct.sadb_msghdr* %247, i32 %248)
  store %struct.TYPE_11__* %249, %struct.TYPE_11__** %11, align 8
  %250 = load i64, i64* %15, align 8
  %251 = load i32, i32* %16, align 4
  %252 = load i64, i64* %17, align 8
  %253 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %254 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %253, i64 1
  %255 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %256 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %255, i64 1
  %257 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %258 = icmp ne %struct.TYPE_11__* %257, null
  br i1 %258, label %259, label %263

259:                                              ; preds = %224
  %260 = load %struct.TYPE_11__*, %struct.TYPE_11__** %11, align 8
  %261 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %260, i32 0, i32 0
  %262 = load i32, i32* %261, align 4
  br label %264

263:                                              ; preds = %224
  br label %264

264:                                              ; preds = %263, %259
  %265 = phi i32 [ %262, %259 ], [ 0, %263 ]
  %266 = call i32 @KEY_SETSECASIDX(i64 %250, i32 %251, i64 %252, %struct.sadb_address* %254, %struct.sadb_address* %256, i32 %265, %struct.secasindex* %12)
  %267 = load i32, i32* @sadb_mutex, align 4
  %268 = call i32 @lck_mtx_lock(i32 %267)
  %269 = call %struct.secashead* @key_getsah(%struct.secasindex* %12)
  store %struct.secashead* %269, %struct.secashead** %13, align 8
  %270 = icmp eq %struct.secashead* %269, null
  br i1 %270, label %271, label %280

271:                                              ; preds = %264
  %272 = load i32, i32* @sadb_mutex, align 4
  %273 = call i32 @lck_mtx_unlock(i32 %272)
  %274 = load i32, i32* @LOG_DEBUG, align 4
  %275 = call i32 @ipseclog(i32 ptrtoint ([32 x i8]* @.str.3 to i32))
  %276 = load %struct.socket*, %struct.socket** %5, align 8
  %277 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %278 = load i32, i32* @ENOENT, align 4
  %279 = call i32 @key_senderror(%struct.socket* %276, %struct.mbuf* %277, i32 %278)
  store i32 %279, i32* %4, align 4
  br label %466

280:                                              ; preds = %264
  %281 = load %struct.secashead*, %struct.secashead** %13, align 8
  %282 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %283 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %284 = call i32 @key_setident(%struct.secashead* %281, %struct.mbuf* %282, %struct.sadb_msghdr* %283)
  store i32 %284, i32* %19, align 4
  %285 = load i32, i32* %19, align 4
  %286 = icmp ne i32 %285, 0
  br i1 %286, label %287, label %294

287:                                              ; preds = %280
  %288 = load i32, i32* @sadb_mutex, align 4
  %289 = call i32 @lck_mtx_unlock(i32 %288)
  %290 = load %struct.socket*, %struct.socket** %5, align 8
  %291 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %292 = load i32, i32* %19, align 4
  %293 = call i32 @key_senderror(%struct.socket* %290, %struct.mbuf* %291, i32 %292)
  store i32 %293, i32* %4, align 4
  br label %466

294:                                              ; preds = %280
  %295 = load %struct.secashead*, %struct.secashead** %13, align 8
  %296 = load %struct.sadb_sa*, %struct.sadb_sa** %8, align 8
  %297 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %296, i32 0, i32 0
  %298 = load i64, i64* %297, align 8
  %299 = call %struct.secasvar* @key_getsavbyspi(%struct.secashead* %295, i64 %298)
  store %struct.secasvar* %299, %struct.secasvar** %14, align 8
  %300 = icmp eq %struct.secasvar* %299, null
  br i1 %300, label %301, label %315

301:                                              ; preds = %294
  %302 = load i32, i32* @sadb_mutex, align 4
  %303 = call i32 @lck_mtx_unlock(i32 %302)
  %304 = load i32, i32* @LOG_DEBUG, align 4
  %305 = load %struct.sadb_sa*, %struct.sadb_sa** %8, align 8
  %306 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %305, i32 0, i32 0
  %307 = load i64, i64* %306, align 8
  %308 = call i64 @ntohl(i64 %307)
  %309 = trunc i64 %308 to i32
  %310 = call i32 @ipseclog(i32 %309)
  %311 = load %struct.socket*, %struct.socket** %5, align 8
  %312 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %313 = load i32, i32* @EINVAL, align 4
  %314 = call i32 @key_senderror(%struct.socket* %311, %struct.mbuf* %312, i32 %313)
  store i32 %314, i32* %4, align 4
  br label %466

315:                                              ; preds = %294
  %316 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %317 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %316, i32 0, i32 2
  %318 = load %struct.TYPE_9__*, %struct.TYPE_9__** %317, align 8
  %319 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %318, i32 0, i32 0
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 0
  %321 = load i64, i64* %320, align 8
  %322 = load i64, i64* %15, align 8
  %323 = icmp ne i64 %321, %322
  br i1 %323, label %324, label %341

324:                                              ; preds = %315
  %325 = load i32, i32* @sadb_mutex, align 4
  %326 = call i32 @lck_mtx_unlock(i32 %325)
  %327 = load i32, i32* @LOG_DEBUG, align 4
  %328 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %329 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %328, i32 0, i32 2
  %330 = load %struct.TYPE_9__*, %struct.TYPE_9__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %330, i32 0, i32 0
  %332 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %331, i32 0, i32 0
  %333 = load i64, i64* %332, align 8
  %334 = load i64, i64* %15, align 8
  %335 = trunc i64 %334 to i32
  %336 = call i32 @ipseclog(i32 %335)
  %337 = load %struct.socket*, %struct.socket** %5, align 8
  %338 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %339 = load i32, i32* @EINVAL, align 4
  %340 = call i32 @key_senderror(%struct.socket* %337, %struct.mbuf* %338, i32 %339)
  store i32 %340, i32* %4, align 4
  br label %466

341:                                              ; preds = %315
  %342 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %343 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %342, i32 0, i32 5
  %344 = load i32, i32* %343, align 8
  %345 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %346 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %345, i32 0, i32 1
  %347 = load %struct.TYPE_10__*, %struct.TYPE_10__** %346, align 8
  %348 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %347, i32 0, i32 1
  %349 = load i32, i32* %348, align 8
  %350 = icmp ne i32 %344, %349
  br i1 %350, label %351, label %368

351:                                              ; preds = %341
  %352 = load i32, i32* @sadb_mutex, align 4
  %353 = call i32 @lck_mtx_unlock(i32 %352)
  %354 = load i32, i32* @LOG_DEBUG, align 4
  %355 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %356 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %355, i32 0, i32 5
  %357 = load i32, i32* %356, align 8
  %358 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %359 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %358, i32 0, i32 1
  %360 = load %struct.TYPE_10__*, %struct.TYPE_10__** %359, align 8
  %361 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %360, i32 0, i32 1
  %362 = load i32, i32* %361, align 8
  %363 = call i32 @ipseclog(i32 %362)
  %364 = load %struct.socket*, %struct.socket** %5, align 8
  %365 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %366 = load i32, i32* @EINVAL, align 4
  %367 = call i32 @key_senderror(%struct.socket* %364, %struct.mbuf* %365, i32 %366)
  store i32 %367, i32* %4, align 4
  br label %466

368:                                              ; preds = %341
  %369 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %370 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %371 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %372 = call i32 @key_setsaval(%struct.secasvar* %369, %struct.mbuf* %370, %struct.sadb_msghdr* %371)
  store i32 %372, i32* %19, align 4
  %373 = load i32, i32* %19, align 4
  %374 = icmp ne i32 %373, 0
  br i1 %374, label %375, label %385

375:                                              ; preds = %368
  %376 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %377 = load i32, i32* @KEY_SADB_LOCKED, align 4
  %378 = call i32 @key_freesav(%struct.secasvar* %376, i32 %377)
  %379 = load i32, i32* @sadb_mutex, align 4
  %380 = call i32 @lck_mtx_unlock(i32 %379)
  %381 = load %struct.socket*, %struct.socket** %5, align 8
  %382 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %383 = load i32, i32* %19, align 4
  %384 = call i32 @key_senderror(%struct.socket* %381, %struct.mbuf* %382, i32 %383)
  store i32 %384, i32* %4, align 4
  br label %466

385:                                              ; preds = %368
  %386 = load i64, i64* %18, align 8
  %387 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %388 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %387, i32 0, i32 4
  store i64 %386, i64* %388, align 8
  %389 = load i64, i64* %18, align 8
  %390 = load i64, i64* @SADB_X_EXT_SA2_DELETE_ON_DETACH, align 8
  %391 = and i64 %389, %390
  %392 = icmp ne i64 %391, 0
  br i1 %392, label %393, label %397

393:                                              ; preds = %385
  %394 = load %struct.socket*, %struct.socket** %5, align 8
  %395 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %396 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %395, i32 0, i32 3
  store %struct.socket* %394, %struct.socket** %396, align 8
  br label %397

397:                                              ; preds = %393, %385
  %398 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %399 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %398, i32 0, i32 1
  %400 = load i32, i32* %399, align 8
  %401 = load i32, i32* @SADB_X_EXT_NATT_MULTIPLEUSERS, align 4
  %402 = and i32 %400, %401
  %403 = icmp ne i32 %402, 0
  br i1 %403, label %404, label %430

404:                                              ; preds = %397
  %405 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %406 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %405, i32 0, i32 2
  %407 = load %struct.TYPE_9__*, %struct.TYPE_9__** %406, align 8
  %408 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %407, i32 0, i32 0
  %409 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %408, i32 0, i32 1
  %410 = load i64, i64* %409, align 8
  %411 = load i64, i64* @IPSEC_MODE_TRANSPORT, align 8
  %412 = icmp ne i64 %410, %411
  br i1 %412, label %423, label %413

413:                                              ; preds = %404
  %414 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %415 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %414, i32 0, i32 2
  %416 = load %struct.TYPE_9__*, %struct.TYPE_9__** %415, align 8
  %417 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %416, i32 0, i32 0
  %418 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %417, i32 0, i32 2
  %419 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %418, i32 0, i32 0
  %420 = load i64, i64* %419, align 8
  %421 = load i64, i64* @AF_INET, align 8
  %422 = icmp ne i64 %420, %421
  br i1 %422, label %423, label %430

423:                                              ; preds = %413, %404
  %424 = load i32, i32* @SADB_X_EXT_NATT_MULTIPLEUSERS, align 4
  %425 = xor i32 %424, -1
  %426 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %427 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %426, i32 0, i32 1
  %428 = load i32, i32* %427, align 8
  %429 = and i32 %428, %425
  store i32 %429, i32* %427, align 8
  br label %430

430:                                              ; preds = %423, %413, %397
  %431 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %432 = call i32 @key_mature(%struct.secasvar* %431)
  store i32 %432, i32* %19, align 4
  %433 = icmp ne i32 %432, 0
  br i1 %433, label %434, label %444

434:                                              ; preds = %430
  %435 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %436 = load i32, i32* @KEY_SADB_LOCKED, align 4
  %437 = call i32 @key_freesav(%struct.secasvar* %435, i32 %436)
  %438 = load i32, i32* @sadb_mutex, align 4
  %439 = call i32 @lck_mtx_unlock(i32 %438)
  %440 = load %struct.socket*, %struct.socket** %5, align 8
  %441 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %442 = load i32, i32* %19, align 4
  %443 = call i32 @key_senderror(%struct.socket* %440, %struct.mbuf* %441, i32 %442)
  store i32 %443, i32* %4, align 4
  br label %466

444:                                              ; preds = %430
  %445 = load i32, i32* @sadb_mutex, align 4
  %446 = call i32 @lck_mtx_unlock(i32 %445)
  %447 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %448 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %449 = call %struct.mbuf* @key_getmsgbuf_x1(%struct.mbuf* %447, %struct.sadb_msghdr* %448)
  store %struct.mbuf* %449, %struct.mbuf** %20, align 8
  %450 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %451 = icmp eq %struct.mbuf* %450, null
  br i1 %451, label %452, label %459

452:                                              ; preds = %444
  %453 = load i32, i32* @LOG_DEBUG, align 4
  %454 = call i32 @ipseclog(i32 ptrtoint ([29 x i8]* @.str.7 to i32))
  %455 = load %struct.socket*, %struct.socket** %5, align 8
  %456 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %457 = load i32, i32* @ENOBUFS, align 4
  %458 = call i32 @key_senderror(%struct.socket* %455, %struct.mbuf* %456, i32 %457)
  store i32 %458, i32* %4, align 4
  br label %466

459:                                              ; preds = %444
  %460 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %461 = call i32 @m_freem(%struct.mbuf* %460)
  %462 = load %struct.socket*, %struct.socket** %5, align 8
  %463 = load %struct.mbuf*, %struct.mbuf** %20, align 8
  %464 = load i32, i32* @KEY_SENDUP_ALL, align 4
  %465 = call i32 @key_sendup_mbuf(%struct.socket* %462, %struct.mbuf* %463, i32 %464)
  store i32 %465, i32* %4, align 4
  br label %466

466:                                              ; preds = %459, %452, %434, %375, %351, %324, %301, %287, %271, %176, %142, %47
  %467 = load i32, i32* %4, align 4
  ret i32 %467
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i64 @key_satype2proto(i64) #1

declare dso_local i32 @ipseclog(i32) #1

declare dso_local i32 @key_senderror(%struct.socket*, %struct.mbuf*, i32) #1

declare dso_local %struct.TYPE_11__* @key_get_ipsec_if_from_message(%struct.sadb_msghdr*, i32) #1

declare dso_local i32 @KEY_SETSECASIDX(i64, i32, i64, %struct.sadb_address*, %struct.sadb_address*, i32, %struct.secasindex*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.secashead* @key_getsah(%struct.secasindex*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @key_setident(%struct.secashead*, %struct.mbuf*, %struct.sadb_msghdr*) #1

declare dso_local %struct.secasvar* @key_getsavbyspi(%struct.secashead*, i64) #1

declare dso_local i64 @ntohl(i64) #1

declare dso_local i32 @key_setsaval(%struct.secasvar*, %struct.mbuf*, %struct.sadb_msghdr*) #1

declare dso_local i32 @key_freesav(%struct.secasvar*, i32) #1

declare dso_local i32 @key_mature(%struct.secasvar*) #1

declare dso_local %struct.mbuf* @key_getmsgbuf_x1(%struct.mbuf*, %struct.sadb_msghdr*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @key_sendup_mbuf(%struct.socket*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
