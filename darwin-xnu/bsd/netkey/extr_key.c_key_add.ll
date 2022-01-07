; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netkey/extr_key.c_key_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.mbuf = type { i32 }
%struct.sadb_msghdr = type { i32*, i32**, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }
%struct.sadb_sa = type { i32 }
%struct.sadb_address = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.secasindex = type { i32 }
%struct.secashead = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.secasvar = type { i32 }
%struct.sadb_x_sa2 = type { i64, i32 }

@sadb_mutex = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_NOTOWNED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [34 x i8] c"key_add: NULL pointer is passed.\0A\00", align 1
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [36 x i8] c"key_add: invalid satype is passed.\0A\00", align 1
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
@.str.2 = private unnamed_addr constant [37 x i8] c"key_add: invalid message is passed.\0A\00", align 1
@SADB_X_EXT_SA2 = common dso_local global i64 0, align 8
@IPSEC_MODE_ANY = common dso_local global i32 0, align 4
@SADB_X_EXT_IPSECIF = common dso_local global i32 0, align 4
@IPSEC_DIR_OUTBOUND = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [26 x i8] c"key_add: No more memory.\0A\00", align 1
@ENOBUFS = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [29 x i8] c"key_add: SA already exists.\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@SADB_X_EXT_NATT_MULTIPLEUSERS = common dso_local global i32 0, align 4
@IPSEC_MODE_TRANSPORT = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@KEY_SADB_LOCKED = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [29 x i8] c"key_update: No more memory.\0A\00", align 1
@KEY_SENDUP_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.mbuf*, %struct.sadb_msghdr*)* @key_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @key_add(%struct.socket* %0, %struct.mbuf* %1, %struct.sadb_msghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.mbuf*, align 8
  %7 = alloca %struct.sadb_msghdr*, align 8
  %8 = alloca %struct.sadb_sa*, align 8
  %9 = alloca %struct.sadb_address*, align 8
  %10 = alloca %struct.sadb_address*, align 8
  %11 = alloca %struct.TYPE_10__*, align 8
  %12 = alloca %struct.secasindex, align 4
  %13 = alloca %struct.secashead*, align 8
  %14 = alloca %struct.secasvar*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca %struct.mbuf*, align 8
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.mbuf* %1, %struct.mbuf** %6, align 8
  store %struct.sadb_msghdr* %2, %struct.sadb_msghdr** %7, align 8
  store %struct.TYPE_10__* null, %struct.TYPE_10__** %11, align 8
  %20 = load i32, i32* @sadb_mutex, align 4
  %21 = load i32, i32* @LCK_MTX_ASSERT_NOTOWNED, align 4
  %22 = call i32 @LCK_MTX_ASSERT(i32 %20, i32 %21)
  %23 = load %struct.socket*, %struct.socket** %5, align 8
  %24 = icmp eq %struct.socket* %23, null
  br i1 %24, label %36, label %25

25:                                               ; preds = %3
  %26 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %27 = icmp eq %struct.mbuf* %26, null
  br i1 %27, label %36, label %28

28:                                               ; preds = %25
  %29 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %30 = icmp eq %struct.sadb_msghdr* %29, null
  br i1 %30, label %36, label %31

31:                                               ; preds = %28
  %32 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %33 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %32, i32 0, i32 2
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = icmp eq %struct.TYPE_7__* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %31, %28, %25, %3
  %37 = call i32 @panic(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str, i64 0, i64 0))
  br label %38

38:                                               ; preds = %36, %31
  %39 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %40 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %39, i32 0, i32 2
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = call i32 @key_satype2proto(i64 %43)
  store i32 %44, i32* %15, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %55

46:                                               ; preds = %38
  %47 = load i32, i32* @LOG_DEBUG, align 4
  %48 = call i32 @ipseclog(i32 ptrtoint ([36 x i8]* @.str.1 to i32))
  %49 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %50 = call i32 @bzero_keys(%struct.sadb_msghdr* %49)
  %51 = load %struct.socket*, %struct.socket** %5, align 8
  %52 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %53 = load i32, i32* @EINVAL, align 4
  %54 = call i32 @key_senderror(%struct.socket* %51, %struct.mbuf* %52, i32 %53)
  store i32 %54, i32* %4, align 4
  br label %408

55:                                               ; preds = %38
  %56 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %57 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %56, i32 0, i32 1
  %58 = load i32**, i32*** %57, align 8
  %59 = load i64, i64* @SADB_EXT_SA, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  %61 = load i32*, i32** %60, align 8
  %62 = icmp eq i32* %61, null
  br i1 %62, label %143, label %63

63:                                               ; preds = %55
  %64 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %65 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %64, i32 0, i32 1
  %66 = load i32**, i32*** %65, align 8
  %67 = load i64, i64* @SADB_EXT_ADDRESS_SRC, align 8
  %68 = getelementptr inbounds i32*, i32** %66, i64 %67
  %69 = load i32*, i32** %68, align 8
  %70 = icmp eq i32* %69, null
  br i1 %70, label %143, label %71

71:                                               ; preds = %63
  %72 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %73 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %72, i32 0, i32 1
  %74 = load i32**, i32*** %73, align 8
  %75 = load i64, i64* @SADB_EXT_ADDRESS_DST, align 8
  %76 = getelementptr inbounds i32*, i32** %74, i64 %75
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  br i1 %78, label %143, label %79

79:                                               ; preds = %71
  %80 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %81 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %80, i32 0, i32 2
  %82 = load %struct.TYPE_7__*, %struct.TYPE_7__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @SADB_SATYPE_ESP, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %79
  %88 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %89 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %88, i32 0, i32 1
  %90 = load i32**, i32*** %89, align 8
  %91 = load i64, i64* @SADB_EXT_KEY_ENCRYPT, align 8
  %92 = getelementptr inbounds i32*, i32** %90, i64 %91
  %93 = load i32*, i32** %92, align 8
  %94 = icmp eq i32* %93, null
  br i1 %94, label %143, label %95

95:                                               ; preds = %87, %79
  %96 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %97 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %96, i32 0, i32 2
  %98 = load %struct.TYPE_7__*, %struct.TYPE_7__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load i64, i64* @SADB_SATYPE_AH, align 8
  %102 = icmp eq i64 %100, %101
  br i1 %102, label %103, label %111

103:                                              ; preds = %95
  %104 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %105 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %104, i32 0, i32 1
  %106 = load i32**, i32*** %105, align 8
  %107 = load i64, i64* @SADB_EXT_KEY_AUTH, align 8
  %108 = getelementptr inbounds i32*, i32** %106, i64 %107
  %109 = load i32*, i32** %108, align 8
  %110 = icmp eq i32* %109, null
  br i1 %110, label %143, label %111

111:                                              ; preds = %103, %95
  %112 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %113 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %112, i32 0, i32 1
  %114 = load i32**, i32*** %113, align 8
  %115 = load i64, i64* @SADB_EXT_LIFETIME_HARD, align 8
  %116 = getelementptr inbounds i32*, i32** %114, i64 %115
  %117 = load i32*, i32** %116, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %127

119:                                              ; preds = %111
  %120 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %121 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %120, i32 0, i32 1
  %122 = load i32**, i32*** %121, align 8
  %123 = load i64, i64* @SADB_EXT_LIFETIME_SOFT, align 8
  %124 = getelementptr inbounds i32*, i32** %122, i64 %123
  %125 = load i32*, i32** %124, align 8
  %126 = icmp eq i32* %125, null
  br i1 %126, label %143, label %127

127:                                              ; preds = %119, %111
  %128 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %129 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %128, i32 0, i32 1
  %130 = load i32**, i32*** %129, align 8
  %131 = load i64, i64* @SADB_EXT_LIFETIME_HARD, align 8
  %132 = getelementptr inbounds i32*, i32** %130, i64 %131
  %133 = load i32*, i32** %132, align 8
  %134 = icmp eq i32* %133, null
  br i1 %134, label %135, label %152

135:                                              ; preds = %127
  %136 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %137 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %136, i32 0, i32 1
  %138 = load i32**, i32*** %137, align 8
  %139 = load i64, i64* @SADB_EXT_LIFETIME_SOFT, align 8
  %140 = getelementptr inbounds i32*, i32** %138, i64 %139
  %141 = load i32*, i32** %140, align 8
  %142 = icmp ne i32* %141, null
  br i1 %142, label %143, label %152

143:                                              ; preds = %135, %119, %103, %87, %71, %63, %55
  %144 = load i32, i32* @LOG_DEBUG, align 4
  %145 = call i32 @ipseclog(i32 ptrtoint ([37 x i8]* @.str.2 to i32))
  %146 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %147 = call i32 @bzero_keys(%struct.sadb_msghdr* %146)
  %148 = load %struct.socket*, %struct.socket** %5, align 8
  %149 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %150 = load i32, i32* @EINVAL, align 4
  %151 = call i32 @key_senderror(%struct.socket* %148, %struct.mbuf* %149, i32 %150)
  store i32 %151, i32* %4, align 4
  br label %408

152:                                              ; preds = %135, %127
  %153 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %154 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %153, i32 0, i32 0
  %155 = load i32*, i32** %154, align 8
  %156 = load i64, i64* @SADB_EXT_SA, align 8
  %157 = getelementptr inbounds i32, i32* %155, i64 %156
  %158 = load i32, i32* %157, align 4
  %159 = sext i32 %158 to i64
  %160 = icmp ult i64 %159, 4
  br i1 %160, label %179, label %161

161:                                              ; preds = %152
  %162 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %163 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %162, i32 0, i32 0
  %164 = load i32*, i32** %163, align 8
  %165 = load i64, i64* @SADB_EXT_ADDRESS_SRC, align 8
  %166 = getelementptr inbounds i32, i32* %164, i64 %165
  %167 = load i32, i32* %166, align 4
  %168 = sext i32 %167 to i64
  %169 = icmp ult i64 %168, 4
  br i1 %169, label %179, label %170

170:                                              ; preds = %161
  %171 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %172 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %171, i32 0, i32 0
  %173 = load i32*, i32** %172, align 8
  %174 = load i64, i64* @SADB_EXT_ADDRESS_DST, align 8
  %175 = getelementptr inbounds i32, i32* %173, i64 %174
  %176 = load i32, i32* %175, align 4
  %177 = sext i32 %176 to i64
  %178 = icmp ult i64 %177, 4
  br i1 %178, label %179, label %188

179:                                              ; preds = %170, %161, %152
  %180 = load i32, i32* @LOG_DEBUG, align 4
  %181 = call i32 @ipseclog(i32 ptrtoint ([37 x i8]* @.str.2 to i32))
  %182 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %183 = call i32 @bzero_keys(%struct.sadb_msghdr* %182)
  %184 = load %struct.socket*, %struct.socket** %5, align 8
  %185 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %186 = load i32, i32* @EINVAL, align 4
  %187 = call i32 @key_senderror(%struct.socket* %184, %struct.mbuf* %185, i32 %186)
  store i32 %187, i32* %4, align 4
  br label %408

188:                                              ; preds = %170
  %189 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %190 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %189, i32 0, i32 1
  %191 = load i32**, i32*** %190, align 8
  %192 = load i64, i64* @SADB_X_EXT_SA2, align 8
  %193 = getelementptr inbounds i32*, i32** %191, i64 %192
  %194 = load i32*, i32** %193, align 8
  %195 = icmp ne i32* %194, null
  br i1 %195, label %196, label %217

196:                                              ; preds = %188
  %197 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %198 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %197, i32 0, i32 1
  %199 = load i32**, i32*** %198, align 8
  %200 = load i64, i64* @SADB_X_EXT_SA2, align 8
  %201 = getelementptr inbounds i32*, i32** %199, i64 %200
  %202 = load i32*, i32** %201, align 8
  %203 = bitcast i32* %202 to i8*
  %204 = bitcast i8* %203 to %struct.sadb_x_sa2*
  %205 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %204, i32 0, i32 1
  %206 = load i32, i32* %205, align 8
  store i32 %206, i32* %16, align 4
  %207 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %208 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %207, i32 0, i32 1
  %209 = load i32**, i32*** %208, align 8
  %210 = load i64, i64* @SADB_X_EXT_SA2, align 8
  %211 = getelementptr inbounds i32*, i32** %209, i64 %210
  %212 = load i32*, i32** %211, align 8
  %213 = bitcast i32* %212 to i8*
  %214 = bitcast i8* %213 to %struct.sadb_x_sa2*
  %215 = getelementptr inbounds %struct.sadb_x_sa2, %struct.sadb_x_sa2* %214, i32 0, i32 0
  %216 = load i64, i64* %215, align 8
  store i64 %216, i64* %17, align 8
  br label %219

217:                                              ; preds = %188
  %218 = load i32, i32* @IPSEC_MODE_ANY, align 4
  store i32 %218, i32* %16, align 4
  store i64 0, i64* %17, align 8
  br label %219

219:                                              ; preds = %217, %196
  %220 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %221 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %220, i32 0, i32 1
  %222 = load i32**, i32*** %221, align 8
  %223 = load i64, i64* @SADB_EXT_SA, align 8
  %224 = getelementptr inbounds i32*, i32** %222, i64 %223
  %225 = load i32*, i32** %224, align 8
  %226 = bitcast i32* %225 to i8*
  %227 = bitcast i8* %226 to %struct.sadb_sa*
  store %struct.sadb_sa* %227, %struct.sadb_sa** %8, align 8
  %228 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %229 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %228, i32 0, i32 1
  %230 = load i32**, i32*** %229, align 8
  %231 = load i64, i64* @SADB_EXT_ADDRESS_SRC, align 8
  %232 = getelementptr inbounds i32*, i32** %230, i64 %231
  %233 = load i32*, i32** %232, align 8
  %234 = bitcast i32* %233 to %struct.sadb_address*
  store %struct.sadb_address* %234, %struct.sadb_address** %9, align 8
  %235 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %236 = getelementptr inbounds %struct.sadb_msghdr, %struct.sadb_msghdr* %235, i32 0, i32 1
  %237 = load i32**, i32*** %236, align 8
  %238 = load i64, i64* @SADB_EXT_ADDRESS_DST, align 8
  %239 = getelementptr inbounds i32*, i32** %237, i64 %238
  %240 = load i32*, i32** %239, align 8
  %241 = bitcast i32* %240 to %struct.sadb_address*
  store %struct.sadb_address* %241, %struct.sadb_address** %10, align 8
  %242 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %243 = load i32, i32* @SADB_X_EXT_IPSECIF, align 4
  %244 = call %struct.TYPE_10__* @key_get_ipsec_if_from_message(%struct.sadb_msghdr* %242, i32 %243)
  store %struct.TYPE_10__* %244, %struct.TYPE_10__** %11, align 8
  %245 = load i32, i32* %15, align 4
  %246 = load i32, i32* %16, align 4
  %247 = load i64, i64* %17, align 8
  %248 = load %struct.sadb_address*, %struct.sadb_address** %9, align 8
  %249 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %248, i64 1
  %250 = load %struct.sadb_address*, %struct.sadb_address** %10, align 8
  %251 = getelementptr inbounds %struct.sadb_address, %struct.sadb_address* %250, i64 1
  %252 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %253 = icmp ne %struct.TYPE_10__* %252, null
  br i1 %253, label %254, label %258

254:                                              ; preds = %219
  %255 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %256 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %255, i32 0, i32 0
  %257 = load i32, i32* %256, align 4
  br label %259

258:                                              ; preds = %219
  br label %259

259:                                              ; preds = %258, %254
  %260 = phi i32 [ %257, %254 ], [ 0, %258 ]
  %261 = call i32 @KEY_SETSECASIDX(i32 %245, i32 %246, i64 %247, %struct.sadb_address* %249, %struct.sadb_address* %251, i32 %260, %struct.secasindex* %12)
  %262 = load i32, i32* @sadb_mutex, align 4
  %263 = call i32 @lck_mtx_lock(i32 %262)
  %264 = call %struct.secashead* @key_getsah(%struct.secasindex* %12)
  store %struct.secashead* %264, %struct.secashead** %13, align 8
  %265 = icmp eq %struct.secashead* %264, null
  br i1 %265, label %266, label %286

266:                                              ; preds = %259
  %267 = load %struct.TYPE_10__*, %struct.TYPE_10__** %11, align 8
  %268 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %269 = load i32, i32* @SADB_X_EXT_IPSECIF, align 4
  %270 = call i32 @key_get_outgoing_ifindex_from_message(%struct.sadb_msghdr* %268, i32 %269)
  %271 = load i32, i32* @IPSEC_DIR_OUTBOUND, align 4
  %272 = call %struct.secashead* @key_newsah(%struct.secasindex* %12, %struct.TYPE_10__* %267, i32 %270, i32 %271)
  store %struct.secashead* %272, %struct.secashead** %13, align 8
  %273 = icmp eq %struct.secashead* %272, null
  br i1 %273, label %274, label %285

274:                                              ; preds = %266
  %275 = load i32, i32* @sadb_mutex, align 4
  %276 = call i32 @lck_mtx_unlock(i32 %275)
  %277 = load i32, i32* @LOG_DEBUG, align 4
  %278 = call i32 @ipseclog(i32 ptrtoint ([26 x i8]* @.str.3 to i32))
  %279 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %280 = call i32 @bzero_keys(%struct.sadb_msghdr* %279)
  %281 = load %struct.socket*, %struct.socket** %5, align 8
  %282 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %283 = load i32, i32* @ENOBUFS, align 4
  %284 = call i32 @key_senderror(%struct.socket* %281, %struct.mbuf* %282, i32 %283)
  store i32 %284, i32* %4, align 4
  br label %408

285:                                              ; preds = %266
  br label %286

286:                                              ; preds = %285, %259
  %287 = load %struct.secashead*, %struct.secashead** %13, align 8
  %288 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %289 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %290 = call i32 @key_setident(%struct.secashead* %287, %struct.mbuf* %288, %struct.sadb_msghdr* %289)
  store i32 %290, i32* %18, align 4
  %291 = load i32, i32* %18, align 4
  %292 = icmp ne i32 %291, 0
  br i1 %292, label %293, label %302

293:                                              ; preds = %286
  %294 = load i32, i32* @sadb_mutex, align 4
  %295 = call i32 @lck_mtx_unlock(i32 %294)
  %296 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %297 = call i32 @bzero_keys(%struct.sadb_msghdr* %296)
  %298 = load %struct.socket*, %struct.socket** %5, align 8
  %299 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %300 = load i32, i32* %18, align 4
  %301 = call i32 @key_senderror(%struct.socket* %298, %struct.mbuf* %299, i32 %300)
  store i32 %301, i32* %4, align 4
  br label %408

302:                                              ; preds = %286
  %303 = load %struct.secashead*, %struct.secashead** %13, align 8
  %304 = load %struct.sadb_sa*, %struct.sadb_sa** %8, align 8
  %305 = getelementptr inbounds %struct.sadb_sa, %struct.sadb_sa* %304, i32 0, i32 0
  %306 = load i32, i32* %305, align 4
  %307 = call i64 @key_getsavbyspi(%struct.secashead* %303, i32 %306)
  %308 = icmp ne i64 %307, 0
  br i1 %308, label %309, label %320

309:                                              ; preds = %302
  %310 = load i32, i32* @sadb_mutex, align 4
  %311 = call i32 @lck_mtx_unlock(i32 %310)
  %312 = load i32, i32* @LOG_DEBUG, align 4
  %313 = call i32 @ipseclog(i32 ptrtoint ([29 x i8]* @.str.4 to i32))
  %314 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %315 = call i32 @bzero_keys(%struct.sadb_msghdr* %314)
  %316 = load %struct.socket*, %struct.socket** %5, align 8
  %317 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %318 = load i32, i32* @EEXIST, align 4
  %319 = call i32 @key_senderror(%struct.socket* %316, %struct.mbuf* %317, i32 %318)
  store i32 %319, i32* %4, align 4
  br label %408

320:                                              ; preds = %302
  %321 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %322 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %323 = load %struct.secashead*, %struct.secashead** %13, align 8
  %324 = load %struct.socket*, %struct.socket** %5, align 8
  %325 = call %struct.secasvar* @key_newsav(%struct.mbuf* %321, %struct.sadb_msghdr* %322, %struct.secashead* %323, i32* %18, %struct.socket* %324)
  store %struct.secasvar* %325, %struct.secasvar** %14, align 8
  %326 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %327 = icmp eq %struct.secasvar* %326, null
  br i1 %327, label %328, label %337

328:                                              ; preds = %320
  %329 = load i32, i32* @sadb_mutex, align 4
  %330 = call i32 @lck_mtx_unlock(i32 %329)
  %331 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %332 = call i32 @bzero_keys(%struct.sadb_msghdr* %331)
  %333 = load %struct.socket*, %struct.socket** %5, align 8
  %334 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %335 = load i32, i32* %18, align 4
  %336 = call i32 @key_senderror(%struct.socket* %333, %struct.mbuf* %334, i32 %335)
  store i32 %336, i32* %4, align 4
  br label %408

337:                                              ; preds = %320
  %338 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %339 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %338, i32 0, i32 0
  %340 = load i32, i32* %339, align 4
  %341 = load i32, i32* @SADB_X_EXT_NATT_MULTIPLEUSERS, align 4
  %342 = and i32 %340, %341
  %343 = icmp ne i32 %342, 0
  br i1 %343, label %344, label %366

344:                                              ; preds = %337
  %345 = load %struct.secashead*, %struct.secashead** %13, align 8
  %346 = getelementptr inbounds %struct.secashead, %struct.secashead* %345, i32 0, i32 0
  %347 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = load i64, i64* @IPSEC_MODE_TRANSPORT, align 8
  %350 = icmp ne i64 %348, %349
  br i1 %350, label %359, label %351

351:                                              ; preds = %344
  %352 = load %struct.secashead*, %struct.secashead** %13, align 8
  %353 = getelementptr inbounds %struct.secashead, %struct.secashead* %352, i32 0, i32 0
  %354 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %353, i32 0, i32 1
  %355 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %354, i32 0, i32 0
  %356 = load i64, i64* %355, align 8
  %357 = load i64, i64* @AF_INET, align 8
  %358 = icmp ne i64 %356, %357
  br i1 %358, label %359, label %366

359:                                              ; preds = %351, %344
  %360 = load i32, i32* @SADB_X_EXT_NATT_MULTIPLEUSERS, align 4
  %361 = xor i32 %360, -1
  %362 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %363 = getelementptr inbounds %struct.secasvar, %struct.secasvar* %362, i32 0, i32 0
  %364 = load i32, i32* %363, align 4
  %365 = and i32 %364, %361
  store i32 %365, i32* %363, align 4
  br label %366

366:                                              ; preds = %359, %351, %337
  %367 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %368 = call i32 @key_mature(%struct.secasvar* %367)
  store i32 %368, i32* %18, align 4
  %369 = icmp ne i32 %368, 0
  br i1 %369, label %370, label %382

370:                                              ; preds = %366
  %371 = load %struct.secasvar*, %struct.secasvar** %14, align 8
  %372 = load i32, i32* @KEY_SADB_LOCKED, align 4
  %373 = call i32 @key_freesav(%struct.secasvar* %371, i32 %372)
  %374 = load i32, i32* @sadb_mutex, align 4
  %375 = call i32 @lck_mtx_unlock(i32 %374)
  %376 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %377 = call i32 @bzero_keys(%struct.sadb_msghdr* %376)
  %378 = load %struct.socket*, %struct.socket** %5, align 8
  %379 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %380 = load i32, i32* %18, align 4
  %381 = call i32 @key_senderror(%struct.socket* %378, %struct.mbuf* %379, i32 %380)
  store i32 %381, i32* %4, align 4
  br label %408

382:                                              ; preds = %366
  %383 = load i32, i32* @sadb_mutex, align 4
  %384 = call i32 @lck_mtx_unlock(i32 %383)
  %385 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %386 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %387 = call %struct.mbuf* @key_getmsgbuf_x1(%struct.mbuf* %385, %struct.sadb_msghdr* %386)
  store %struct.mbuf* %387, %struct.mbuf** %19, align 8
  %388 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %389 = icmp eq %struct.mbuf* %388, null
  br i1 %389, label %390, label %399

390:                                              ; preds = %382
  %391 = load i32, i32* @LOG_DEBUG, align 4
  %392 = call i32 @ipseclog(i32 ptrtoint ([29 x i8]* @.str.5 to i32))
  %393 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %394 = call i32 @bzero_keys(%struct.sadb_msghdr* %393)
  %395 = load %struct.socket*, %struct.socket** %5, align 8
  %396 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %397 = load i32, i32* @ENOBUFS, align 4
  %398 = call i32 @key_senderror(%struct.socket* %395, %struct.mbuf* %396, i32 %397)
  store i32 %398, i32* %4, align 4
  br label %408

399:                                              ; preds = %382
  %400 = load %struct.sadb_msghdr*, %struct.sadb_msghdr** %7, align 8
  %401 = call i32 @bzero_keys(%struct.sadb_msghdr* %400)
  %402 = load %struct.mbuf*, %struct.mbuf** %6, align 8
  %403 = call i32 @m_freem(%struct.mbuf* %402)
  %404 = load %struct.socket*, %struct.socket** %5, align 8
  %405 = load %struct.mbuf*, %struct.mbuf** %19, align 8
  %406 = load i32, i32* @KEY_SENDUP_ALL, align 4
  %407 = call i32 @key_sendup_mbuf(%struct.socket* %404, %struct.mbuf* %405, i32 %406)
  store i32 %407, i32* %4, align 4
  br label %408

408:                                              ; preds = %399, %390, %370, %328, %309, %293, %274, %179, %143, %46
  %409 = load i32, i32* %4, align 4
  ret i32 %409
}

declare dso_local i32 @LCK_MTX_ASSERT(i32, i32) #1

declare dso_local i32 @panic(i8*) #1

declare dso_local i32 @key_satype2proto(i64) #1

declare dso_local i32 @ipseclog(i32) #1

declare dso_local i32 @bzero_keys(%struct.sadb_msghdr*) #1

declare dso_local i32 @key_senderror(%struct.socket*, %struct.mbuf*, i32) #1

declare dso_local %struct.TYPE_10__* @key_get_ipsec_if_from_message(%struct.sadb_msghdr*, i32) #1

declare dso_local i32 @KEY_SETSECASIDX(i32, i32, i64, %struct.sadb_address*, %struct.sadb_address*, i32, %struct.secasindex*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.secashead* @key_getsah(%struct.secasindex*) #1

declare dso_local %struct.secashead* @key_newsah(%struct.secasindex*, %struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @key_get_outgoing_ifindex_from_message(%struct.sadb_msghdr*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

declare dso_local i32 @key_setident(%struct.secashead*, %struct.mbuf*, %struct.sadb_msghdr*) #1

declare dso_local i64 @key_getsavbyspi(%struct.secashead*, i32) #1

declare dso_local %struct.secasvar* @key_newsav(%struct.mbuf*, %struct.sadb_msghdr*, %struct.secashead*, i32*, %struct.socket*) #1

declare dso_local i32 @key_mature(%struct.secasvar*) #1

declare dso_local i32 @key_freesav(%struct.secasvar*, i32) #1

declare dso_local %struct.mbuf* @key_getmsgbuf_x1(%struct.mbuf*, %struct.sadb_msghdr*) #1

declare dso_local i32 @m_freem(%struct.mbuf*) #1

declare dso_local i32 @key_sendup_mbuf(%struct.socket*, %struct.mbuf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
