; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_in6_tmpifadd.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_in6_tmpifadd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.in6_ifaddr = type { i64, i32, %struct.TYPE_17__, %struct.nd_prefix*, %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { %struct.ifnet* }
%struct.ifnet = type { i32 }
%struct.nd_prefix = type { i64 }
%struct.TYPE_15__ = type { i64, i64 }
%struct.TYPE_14__ = type { %struct.in6_addr }
%struct.in6_addr = type { i32*, i32* }
%struct.TYPE_13__ = type { %struct.TYPE_12__ }
%struct.TYPE_12__ = type { i32* }
%struct.in6_aliasreq = type { i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_13__, i32 }
%struct.TYPE_16__ = type { i64, i64 }
%struct.TYPE_11__ = type { %struct.TYPE_17__ }

@LOG_NOTICE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [51 x i8] c"in6_tmpifadd: failed to find a unique random IFID\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@ND6_INFINITE_LIFETIME = common dso_local global i64 0, align 8
@ip6_temp_valid_lifetime = common dso_local global i64 0, align 8
@ip6_temp_preferred_lifetime = common dso_local global i64 0, align 8
@ip6_desync_factor = common dso_local global i64 0, align 8
@ip6_temp_regen_advance = common dso_local global i64 0, align 8
@IN6_IFF_AUTOCONF = common dso_local global i32 0, align 4
@IN6_IFF_TEMPORARY = common dso_local global i32 0, align 4
@IN6_IFAUPDATE_NOWAIT = common dso_local global i32 0, align 4
@IN6_IFAUPDATE_DADDELAY = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [38 x i8] c"in6_tmpifadd: failed to add address.\0A\00", align 1
@.str.2 = private unnamed_addr constant [33 x i8] c"in6_tmpifadd: no public address\0A\00", align 1
@EADDRNOTAVAIL = common dso_local global i32 0, align 4
@nd6_mutex = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @in6_tmpifadd(%struct.in6_ifaddr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.in6_ifaddr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ifnet*, align 8
  %7 = alloca %struct.in6_ifaddr*, align 8
  %8 = alloca %struct.in6_ifaddr*, align 8
  %9 = alloca %struct.in6_aliasreq, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca [2 x i32], align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca %struct.in6_addr, align 8
  %19 = alloca %struct.nd_prefix*, align 8
  store %struct.in6_ifaddr* %0, %struct.in6_ifaddr** %4, align 8
  store i32 %1, i32* %5, align 4
  %20 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %21 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %20, i32 0, i32 2
  %22 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i32 0, i32 0
  %23 = load %struct.ifnet*, %struct.ifnet** %22, align 8
  store %struct.ifnet* %23, %struct.ifnet** %6, align 8
  store i32 3, i32* %13, align 4
  %24 = call i64 (...) @net_uptime()
  store i64 %24, i64* %17, align 8
  %25 = call i32 @bzero(%struct.in6_aliasreq* %9, i32 56)
  %26 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %29 = call i32 @if_name(%struct.ifnet* %28)
  %30 = call i32 @strlcpy(i32 %27, i32 %29, i32 4)
  %31 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %32 = call %struct.TYPE_11__* @IA6_NONCONST(%struct.in6_ifaddr* %31)
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 0
  %34 = call i32 @IFA_LOCK(%struct.TYPE_17__* %33)
  %35 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 2
  %36 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %37 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %36, i32 0, i32 5
  %38 = bitcast %struct.TYPE_14__* %35 to i8*
  %39 = bitcast %struct.TYPE_14__* %37 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %38, i8* align 8 %39, i64 16, i1 false)
  %40 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 3
  %41 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %42 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %41, i32 0, i32 6
  %43 = bitcast %struct.TYPE_13__* %40 to i8*
  %44 = bitcast %struct.TYPE_13__* %42 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %43, i8* align 8 %44, i64 8, i1 false)
  store i32 0, i32* %10, align 4
  br label %45

45:                                               ; preds = %66, %2
  %46 = load i32, i32* %10, align 4
  %47 = icmp slt i32 %46, 4
  br i1 %47, label %48, label %69

48:                                               ; preds = %45
  %49 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = load i32, i32* %10, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds i32, i32* %52, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 2
  %58 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %58, i32 0, i32 0
  %60 = load i32*, i32** %59, align 8
  %61 = load i32, i32* %10, align 4
  %62 = sext i32 %61 to i64
  %63 = getelementptr inbounds i32, i32* %60, i64 %62
  %64 = load i32, i32* %63, align 4
  %65 = and i32 %64, %56
  store i32 %65, i32* %63, align 4
  br label %66

66:                                               ; preds = %48
  %67 = load i32, i32* %10, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %10, align 4
  br label %45

69:                                               ; preds = %45
  %70 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %71 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %70, i32 0, i32 5
  %72 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %71, i32 0, i32 0
  %73 = bitcast %struct.in6_addr* %18 to i8*
  %74 = bitcast %struct.in6_addr* %72 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %73, i8* align 8 %74, i64 16, i1 false)
  %75 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %76 = call %struct.TYPE_11__* @IA6_NONCONST(%struct.in6_ifaddr* %75)
  %77 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %76, i32 0, i32 0
  %78 = call i32 @IFA_UNLOCK(%struct.TYPE_17__* %77)
  br label %79

79:                                               ; preds = %137, %69
  %80 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %81 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %82 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %18, i32 0, i32 1
  %83 = load i32*, i32** %82, align 8
  %84 = getelementptr inbounds i32, i32* %83, i64 8
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @in6_iid_mktmp(%struct.ifnet* %80, i32* %81, i32* %84, i32 %85)
  %87 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 2
  %94 = load i32, i32* %93, align 4
  %95 = xor i32 %94, -1
  %96 = and i32 %88, %95
  %97 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %98, i32 0, i32 0
  %100 = load i32*, i32** %99, align 8
  %101 = getelementptr inbounds i32, i32* %100, i64 2
  %102 = load i32, i32* %101, align 4
  %103 = or i32 %102, %96
  store i32 %103, i32* %101, align 4
  %104 = getelementptr inbounds [2 x i32], [2 x i32]* %14, i64 0, i64 1
  %105 = load i32, i32* %104, align 4
  %106 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 3
  %107 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %106, i32 0, i32 0
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 3
  %111 = load i32, i32* %110, align 4
  %112 = xor i32 %111, -1
  %113 = and i32 %105, %112
  %114 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %114, i32 0, i32 0
  %116 = getelementptr inbounds %struct.in6_addr, %struct.in6_addr* %115, i32 0, i32 0
  %117 = load i32*, i32** %116, align 8
  %118 = getelementptr inbounds i32, i32* %117, i64 3
  %119 = load i32, i32* %118, align 4
  %120 = or i32 %119, %113
  store i32 %120, i32* %118, align 4
  %121 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %122 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 2
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = call %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet* %121, %struct.in6_addr* %123)
  store %struct.in6_ifaddr* %124, %struct.in6_ifaddr** %7, align 8
  %125 = icmp ne %struct.in6_ifaddr* %124, null
  br i1 %125, label %126, label %138

126:                                              ; preds = %79
  %127 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %7, align 8
  %128 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %127, i32 0, i32 2
  %129 = call i32 @IFA_REMREF(%struct.TYPE_17__* %128)
  %130 = load i32, i32* %13, align 4
  %131 = add nsw i32 %130, -1
  store i32 %131, i32* %13, align 4
  %132 = icmp eq i32 %130, 0
  br i1 %132, label %133, label %137

133:                                              ; preds = %126
  %134 = load i32, i32* @LOG_NOTICE, align 4
  %135 = call i32 @nd6log(i32 ptrtoint ([51 x i8]* @.str to i32))
  %136 = load i32, i32* @EEXIST, align 4
  store i32 %136, i32* %3, align 4
  br label %373

137:                                              ; preds = %126
  store i32 1, i32* %5, align 4
  br label %79

138:                                              ; preds = %79
  %139 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %140 = call %struct.TYPE_11__* @IA6_NONCONST(%struct.in6_ifaddr* %139)
  %141 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %140, i32 0, i32 0
  %142 = call i32 @IFA_LOCK(%struct.TYPE_17__* %141)
  %143 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %144 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %143, i32 0, i32 4
  %145 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %148 = icmp ne i64 %146, %147
  br i1 %148, label %149, label %174

149:                                              ; preds = %138
  %150 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %151 = load i64, i64* %17, align 8
  %152 = call i64 @IFA6_IS_INVALID(%struct.in6_ifaddr* %150, i64 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %154, label %155

154:                                              ; preds = %149
  br label %166

155:                                              ; preds = %149
  %156 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %157 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %156, i32 0, i32 4
  %158 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %157, i32 0, i32 0
  %159 = load i64, i64* %158, align 8
  %160 = load i64, i64* %17, align 8
  %161 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %162 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = sub nsw i64 %160, %163
  %165 = sub nsw i64 %159, %164
  br label %166

166:                                              ; preds = %155, %154
  %167 = phi i64 [ 0, %154 ], [ %165, %155 ]
  store i64 %167, i64* %15, align 8
  %168 = load i64, i64* %15, align 8
  %169 = load i64, i64* @ip6_temp_valid_lifetime, align 8
  %170 = icmp sgt i64 %168, %169
  br i1 %170, label %171, label %173

171:                                              ; preds = %166
  %172 = load i64, i64* @ip6_temp_valid_lifetime, align 8
  store i64 %172, i64* %15, align 8
  br label %173

173:                                              ; preds = %171, %166
  br label %176

174:                                              ; preds = %138
  %175 = load i64, i64* @ip6_temp_valid_lifetime, align 8
  store i64 %175, i64* %15, align 8
  br label %176

176:                                              ; preds = %174, %173
  %177 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %178 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %177, i32 0, i32 4
  %179 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %178, i32 0, i32 1
  %180 = load i64, i64* %179, align 8
  %181 = load i64, i64* @ND6_INFINITE_LIFETIME, align 8
  %182 = icmp ne i64 %180, %181
  br i1 %182, label %183, label %212

183:                                              ; preds = %176
  %184 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %185 = load i64, i64* %17, align 8
  %186 = call i64 @IFA6_IS_DEPRECATED(%struct.in6_ifaddr* %184, i64 %185)
  %187 = icmp ne i64 %186, 0
  br i1 %187, label %188, label %189

188:                                              ; preds = %183
  br label %200

189:                                              ; preds = %183
  %190 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %191 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %190, i32 0, i32 4
  %192 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %191, i32 0, i32 1
  %193 = load i64, i64* %192, align 8
  %194 = load i64, i64* %17, align 8
  %195 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %196 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %195, i32 0, i32 0
  %197 = load i64, i64* %196, align 8
  %198 = sub nsw i64 %194, %197
  %199 = sub nsw i64 %193, %198
  br label %200

200:                                              ; preds = %189, %188
  %201 = phi i64 [ 0, %188 ], [ %199, %189 ]
  store i64 %201, i64* %16, align 8
  %202 = load i64, i64* %16, align 8
  %203 = load i64, i64* @ip6_temp_preferred_lifetime, align 8
  %204 = load i64, i64* @ip6_desync_factor, align 8
  %205 = sub nsw i64 %203, %204
  %206 = icmp sgt i64 %202, %205
  br i1 %206, label %207, label %211

207:                                              ; preds = %200
  %208 = load i64, i64* @ip6_temp_preferred_lifetime, align 8
  %209 = load i64, i64* @ip6_desync_factor, align 8
  %210 = sub nsw i64 %208, %209
  store i64 %210, i64* %16, align 8
  br label %211

211:                                              ; preds = %207, %200
  br label %216

212:                                              ; preds = %176
  %213 = load i64, i64* @ip6_temp_preferred_lifetime, align 8
  %214 = load i64, i64* @ip6_desync_factor, align 8
  %215 = sub nsw i64 %213, %214
  store i64 %215, i64* %16, align 8
  br label %216

216:                                              ; preds = %212, %211
  %217 = load i64, i64* %15, align 8
  %218 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 1
  %219 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %218, i32 0, i32 1
  store i64 %217, i64* %219, align 8
  %220 = load i64, i64* %16, align 8
  %221 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 1
  %222 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %221, i32 0, i32 0
  store i64 %220, i64* %222, align 8
  %223 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %224 = call %struct.TYPE_11__* @IA6_NONCONST(%struct.in6_ifaddr* %223)
  %225 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %224, i32 0, i32 0
  %226 = call i32 @IFA_UNLOCK(%struct.TYPE_17__* %225)
  %227 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 1
  %228 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %227, i32 0, i32 0
  %229 = load i64, i64* %228, align 8
  %230 = load i64, i64* @ip6_temp_regen_advance, align 8
  %231 = icmp sle i64 %229, %230
  br i1 %231, label %232, label %233

232:                                              ; preds = %216
  store i32 0, i32* %3, align 4
  br label %373

233:                                              ; preds = %216
  %234 = load i32, i32* @IN6_IFF_AUTOCONF, align 4
  %235 = load i32, i32* @IN6_IFF_TEMPORARY, align 4
  %236 = or i32 %234, %235
  %237 = getelementptr inbounds %struct.in6_aliasreq, %struct.in6_aliasreq* %9, i32 0, i32 0
  %238 = load i32, i32* %237, align 8
  %239 = or i32 %238, %236
  store i32 %239, i32* %237, align 8
  %240 = load i32, i32* @IN6_IFAUPDATE_NOWAIT, align 4
  %241 = load i32, i32* @IN6_IFAUPDATE_DADDELAY, align 4
  %242 = or i32 %240, %241
  store i32 %242, i32* %12, align 4
  %243 = load %struct.ifnet*, %struct.ifnet** %6, align 8
  %244 = load i32, i32* %12, align 4
  %245 = call i32 @in6_update_ifa(%struct.ifnet* %243, %struct.in6_aliasreq* %9, i32 %244, %struct.in6_ifaddr** %8)
  store i32 %245, i32* %11, align 4
  %246 = load i32, i32* %11, align 4
  %247 = icmp ne i32 %246, 0
  br i1 %247, label %248, label %252

248:                                              ; preds = %233
  %249 = load i32, i32* @LOG_ERR, align 4
  %250 = call i32 @nd6log(i32 ptrtoint ([38 x i8]* @.str.1 to i32))
  %251 = load i32, i32* %11, align 4
  store i32 %251, i32* %3, align 4
  br label %373

252:                                              ; preds = %233
  %253 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %254 = icmp ne %struct.in6_ifaddr* %253, null
  %255 = zext i1 %254 to i32
  %256 = call i32 @VERIFY(i32 %255)
  %257 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %258 = call %struct.TYPE_11__* @IA6_NONCONST(%struct.in6_ifaddr* %257)
  %259 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %258, i32 0, i32 0
  %260 = call i32 @IFA_LOCK(%struct.TYPE_17__* %259)
  %261 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %262 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %261, i32 0, i32 3
  %263 = load %struct.nd_prefix*, %struct.nd_prefix** %262, align 8
  store %struct.nd_prefix* %263, %struct.nd_prefix** %19, align 8
  %264 = load %struct.nd_prefix*, %struct.nd_prefix** %19, align 8
  %265 = icmp eq %struct.nd_prefix* %264, null
  br i1 %265, label %266, label %289

266:                                              ; preds = %252
  %267 = load i32, i32* @LOG_ERR, align 4
  %268 = call i32 @nd6log(i32 ptrtoint ([33 x i8]* @.str.2 to i32))
  %269 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %270 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %269, i32 0, i32 1
  %271 = load i32, i32* %270, align 8
  %272 = load i32, i32* @IN6_IFF_AUTOCONF, align 4
  %273 = and i32 %271, %272
  %274 = icmp ne i32 %273, 0
  %275 = xor i1 %274, true
  %276 = zext i1 %275 to i32
  %277 = call i32 @VERIFY(i32 %276)
  %278 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %279 = call %struct.TYPE_11__* @IA6_NONCONST(%struct.in6_ifaddr* %278)
  %280 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %279, i32 0, i32 0
  %281 = call i32 @IFA_UNLOCK(%struct.TYPE_17__* %280)
  %282 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %283 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %282, i32 0, i32 2
  %284 = call i32 @in6_purgeaddr(%struct.TYPE_17__* %283)
  %285 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %286 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %285, i32 0, i32 2
  %287 = call i32 @IFA_REMREF(%struct.TYPE_17__* %286)
  %288 = load i32, i32* @EADDRNOTAVAIL, align 4
  store i32 %288, i32* %3, align 4
  br label %373

289:                                              ; preds = %252
  %290 = load %struct.nd_prefix*, %struct.nd_prefix** %19, align 8
  %291 = call i32 @NDPR_ADDREF(%struct.nd_prefix* %290)
  %292 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %4, align 8
  %293 = call %struct.TYPE_11__* @IA6_NONCONST(%struct.in6_ifaddr* %292)
  %294 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %293, i32 0, i32 0
  %295 = call i32 @IFA_UNLOCK(%struct.TYPE_17__* %294)
  %296 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %297 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %296, i32 0, i32 2
  %298 = call i32 @IFA_LOCK(%struct.TYPE_17__* %297)
  %299 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %300 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %299, i32 0, i32 3
  %301 = load %struct.nd_prefix*, %struct.nd_prefix** %300, align 8
  %302 = icmp ne %struct.nd_prefix* %301, null
  br i1 %302, label %303, label %330

303:                                              ; preds = %289
  %304 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %305 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %304, i32 0, i32 3
  %306 = load %struct.nd_prefix*, %struct.nd_prefix** %305, align 8
  %307 = call i32 @NDPR_LOCK(%struct.nd_prefix* %306)
  %308 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %309 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %308, i32 0, i32 3
  %310 = load %struct.nd_prefix*, %struct.nd_prefix** %309, align 8
  %311 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %310, i32 0, i32 0
  %312 = load i64, i64* %311, align 8
  %313 = icmp ne i64 %312, 0
  %314 = zext i1 %313 to i32
  %315 = call i32 @VERIFY(i32 %314)
  %316 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %317 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %316, i32 0, i32 3
  %318 = load %struct.nd_prefix*, %struct.nd_prefix** %317, align 8
  %319 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %318, i32 0, i32 0
  %320 = load i64, i64* %319, align 8
  %321 = add nsw i64 %320, -1
  store i64 %321, i64* %319, align 8
  %322 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %323 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %322, i32 0, i32 3
  %324 = load %struct.nd_prefix*, %struct.nd_prefix** %323, align 8
  %325 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %324)
  %326 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %327 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %326, i32 0, i32 3
  %328 = load %struct.nd_prefix*, %struct.nd_prefix** %327, align 8
  %329 = call i32 @NDPR_REMREF(%struct.nd_prefix* %328)
  br label %330

330:                                              ; preds = %303, %289
  %331 = load %struct.nd_prefix*, %struct.nd_prefix** %19, align 8
  %332 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %333 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %332, i32 0, i32 3
  store %struct.nd_prefix* %331, %struct.nd_prefix** %333, align 8
  %334 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %335 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %334, i32 0, i32 3
  %336 = load %struct.nd_prefix*, %struct.nd_prefix** %335, align 8
  %337 = call i32 @NDPR_LOCK(%struct.nd_prefix* %336)
  %338 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %339 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %338, i32 0, i32 3
  %340 = load %struct.nd_prefix*, %struct.nd_prefix** %339, align 8
  %341 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %340, i32 0, i32 0
  %342 = load i64, i64* %341, align 8
  %343 = add nsw i64 %342, 1
  store i64 %343, i64* %341, align 8
  %344 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %345 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %344, i32 0, i32 3
  %346 = load %struct.nd_prefix*, %struct.nd_prefix** %345, align 8
  %347 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %346, i32 0, i32 0
  %348 = load i64, i64* %347, align 8
  %349 = icmp ne i64 %348, 0
  %350 = zext i1 %349 to i32
  %351 = call i32 @VERIFY(i32 %350)
  %352 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %353 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %352, i32 0, i32 3
  %354 = load %struct.nd_prefix*, %struct.nd_prefix** %353, align 8
  %355 = call i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix* %354)
  %356 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %357 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %356, i32 0, i32 3
  %358 = load %struct.nd_prefix*, %struct.nd_prefix** %357, align 8
  %359 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %358)
  %360 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %361 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %360, i32 0, i32 2
  %362 = call i32 @IFA_UNLOCK(%struct.TYPE_17__* %361)
  %363 = load i32, i32* @nd6_mutex, align 4
  %364 = call i32 @lck_mtx_lock(i32 %363)
  %365 = call i32 (...) @pfxlist_onlink_check()
  %366 = load i32, i32* @nd6_mutex, align 4
  %367 = call i32 @lck_mtx_unlock(i32 %366)
  %368 = load %struct.in6_ifaddr*, %struct.in6_ifaddr** %8, align 8
  %369 = getelementptr inbounds %struct.in6_ifaddr, %struct.in6_ifaddr* %368, i32 0, i32 2
  %370 = call i32 @IFA_REMREF(%struct.TYPE_17__* %369)
  %371 = load %struct.nd_prefix*, %struct.nd_prefix** %19, align 8
  %372 = call i32 @NDPR_REMREF(%struct.nd_prefix* %371)
  store i32 0, i32* %3, align 4
  br label %373

373:                                              ; preds = %330, %266, %248, %232, %133
  %374 = load i32, i32* %3, align 4
  ret i32 %374
}

declare dso_local i64 @net_uptime(...) #1

declare dso_local i32 @bzero(%struct.in6_aliasreq*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @IFA_LOCK(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_11__* @IA6_NONCONST(%struct.in6_ifaddr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @IFA_UNLOCK(%struct.TYPE_17__*) #1

declare dso_local i32 @in6_iid_mktmp(%struct.ifnet*, i32*, i32*, i32) #1

declare dso_local %struct.in6_ifaddr* @in6ifa_ifpwithaddr(%struct.ifnet*, %struct.in6_addr*) #1

declare dso_local i32 @IFA_REMREF(%struct.TYPE_17__*) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i64 @IFA6_IS_INVALID(%struct.in6_ifaddr*, i64) #1

declare dso_local i64 @IFA6_IS_DEPRECATED(%struct.in6_ifaddr*, i64) #1

declare dso_local i32 @in6_update_ifa(%struct.ifnet*, %struct.in6_aliasreq*, i32, %struct.in6_ifaddr**) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @in6_purgeaddr(%struct.TYPE_17__*) #1

declare dso_local i32 @NDPR_ADDREF(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_REMREF(%struct.nd_prefix*) #1

declare dso_local i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix*) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32 @pfxlist_onlink_check(...) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
