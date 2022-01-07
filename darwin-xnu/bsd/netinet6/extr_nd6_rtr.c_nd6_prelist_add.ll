; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_prelist_add.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/netinet6/extr_nd6_rtr.c_nd6_prelist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_prefix = type { i32, i32, %struct.TYPE_4__, %struct.ifnet*, i64, i32, %struct.TYPE_6__, i32, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.ifnet = type { i32 }
%struct.TYPE_6__ = type { i32* }
%struct.nd_defrouter = type { i32 }
%struct.nd_ifinfo = type { i64, i64, i32 }

@ip6_maxifprefixes = common dso_local global i64 0, align 8
@TRUE = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@M_WAITOK = common dso_local global i32 0, align 4
@NDPRF_STATIC = common dso_local global i32 0, align 4
@nd6_sched_timeout_want = common dso_local global i32 0, align 4
@nd6_mutex = common dso_local global i32* null, align 8
@nd_prefix = common dso_local global i32 0, align 4
@ndpr_entry = common dso_local global i32 0, align 4
@IFD_ATTACHED = common dso_local global i32 0, align 4
@LOG_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [78 x i8] c"nd6_prelist_add: failed to make the prefix %s/%d on-link %s on %s (errno=%d)\0A\00", align 1
@.str.1 = private unnamed_addr constant [7 x i8] c"scoped\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"non-scoped\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nd6_prelist_add(%struct.nd_prefix* %0, %struct.nd_defrouter* %1, %struct.nd_prefix** %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nd_prefix*, align 8
  %7 = alloca %struct.nd_defrouter*, align 8
  %8 = alloca %struct.nd_prefix**, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nd_prefix*, align 8
  %11 = alloca %struct.ifnet*, align 8
  %12 = alloca %struct.nd_ifinfo*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.nd_prefix* %0, %struct.nd_prefix** %6, align 8
  store %struct.nd_defrouter* %1, %struct.nd_defrouter** %7, align 8
  store %struct.nd_prefix** %2, %struct.nd_prefix*** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.nd_prefix* null, %struct.nd_prefix** %10, align 8
  %16 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %17 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %16, i32 0, i32 3
  %18 = load %struct.ifnet*, %struct.ifnet** %17, align 8
  store %struct.ifnet* %18, %struct.ifnet** %11, align 8
  store %struct.nd_ifinfo* null, %struct.nd_ifinfo** %12, align 8
  %19 = load i64, i64* @ip6_maxifprefixes, align 8
  %20 = icmp sge i64 %19, 0
  br i1 %20, label %21, label %53

21:                                               ; preds = %4
  %22 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %23 = call %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet* %22)
  store %struct.nd_ifinfo* %23, %struct.nd_ifinfo** %12, align 8
  %24 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %25 = icmp ne %struct.nd_ifinfo* null, %24
  br i1 %25, label %26, label %32

26:                                               ; preds = %21
  %27 = load i64, i64* @TRUE, align 8
  %28 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %29 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp eq i64 %27, %30
  br label %32

32:                                               ; preds = %26, %21
  %33 = phi i1 [ false, %21 ], [ %31, %26 ]
  %34 = zext i1 %33 to i32
  %35 = call i32 @VERIFY(i32 %34)
  %36 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %37 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %36, i32 0, i32 2
  %38 = call i32 @lck_mtx_lock(i32* %37)
  %39 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %40 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ip6_maxifprefixes, align 8
  %43 = icmp sge i64 %41, %42
  br i1 %43, label %44, label %49

44:                                               ; preds = %32
  %45 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %46 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %45, i32 0, i32 2
  %47 = call i32 @lck_mtx_unlock(i32* %46)
  %48 = load i32, i32* @ENOMEM, align 4
  store i32 %48, i32* %5, align 4
  br label %241

49:                                               ; preds = %32
  %50 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %51 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %50, i32 0, i32 2
  %52 = call i32 @lck_mtx_unlock(i32* %51)
  br label %53

53:                                               ; preds = %49, %4
  %54 = load i32, i32* @M_WAITOK, align 4
  %55 = call %struct.nd_prefix* @ndpr_alloc(i32 %54)
  store %struct.nd_prefix* %55, %struct.nd_prefix** %10, align 8
  %56 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %57 = icmp eq %struct.nd_prefix* %56, null
  br i1 %57, label %58, label %60

58:                                               ; preds = %53
  %59 = load i32, i32* @ENOMEM, align 4
  store i32 %59, i32* %5, align 4
  br label %241

60:                                               ; preds = %53
  %61 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %62 = call i32 @NDPR_LOCK(%struct.nd_prefix* %61)
  %63 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %64 = call i32 @NDPR_LOCK(%struct.nd_prefix* %63)
  %65 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %66 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %65, i32 0, i32 3
  %67 = load %struct.ifnet*, %struct.ifnet** %66, align 8
  %68 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %69 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %68, i32 0, i32 3
  store %struct.ifnet* %67, %struct.ifnet** %69, align 8
  %70 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %71 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %70, i32 0, i32 2
  %72 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %73 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %72, i32 0, i32 2
  %74 = bitcast %struct.TYPE_4__* %71 to i8*
  %75 = bitcast %struct.TYPE_4__* %73 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %74, i8* align 8 %75, i64 8, i1 false)
  %76 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %77 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %80 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  %81 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %82 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %81, i32 0, i32 11
  %83 = load i32, i32* %82, align 8
  %84 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %85 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %84, i32 0, i32 11
  store i32 %83, i32* %85, align 8
  %86 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %87 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %86, i32 0, i32 10
  %88 = load i32, i32* %87, align 4
  %89 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %90 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %89, i32 0, i32 10
  store i32 %88, i32* %90, align 4
  %91 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %92 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %91, i32 0, i32 9
  %93 = load i32, i32* %92, align 8
  %94 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %95 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %94, i32 0, i32 9
  store i32 %93, i32* %95, align 8
  %96 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %97 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = load i32, i32* @NDPRF_STATIC, align 4
  %100 = and i32 %98, %99
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %108

102:                                              ; preds = %60
  %103 = load i32, i32* @NDPRF_STATIC, align 4
  %104 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %105 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = or i32 %106, %103
  store i32 %107, i32* %105, align 8
  br label %108

108:                                              ; preds = %102, %60
  %109 = load %struct.nd_prefix*, %struct.nd_prefix** %6, align 8
  %110 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %109)
  %111 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %112 = call i32 @in6_init_prefix_ltimes(%struct.nd_prefix* %111)
  store i32 %112, i32* %14, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %108
  %115 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %116 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %115)
  %117 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %118 = call i32 @ndpr_free(%struct.nd_prefix* %117)
  %119 = load i32, i32* %14, align 4
  store i32 %119, i32* %5, align 4
  br label %241

120:                                              ; preds = %108
  %121 = call i32 (...) @net_uptime()
  %122 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %123 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %122, i32 0, i32 8
  store i32 %121, i32* %123, align 4
  %124 = load %struct.nd_prefix**, %struct.nd_prefix*** %8, align 8
  %125 = icmp ne %struct.nd_prefix** %124, null
  br i1 %125, label %126, label %131

126:                                              ; preds = %120
  %127 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %128 = load %struct.nd_prefix**, %struct.nd_prefix*** %8, align 8
  store %struct.nd_prefix* %127, %struct.nd_prefix** %128, align 8
  %129 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %130 = call i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix* %129)
  br label %131

131:                                              ; preds = %126, %120
  %132 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %133 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %132, i32 0, i32 7
  %134 = call i32 @LIST_INIT(i32* %133)
  %135 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %136 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %135, i32 0, i32 6
  %137 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %138 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 4
  %140 = call i32 @in6_prefixlen2mask(%struct.TYPE_6__* %136, i32 %139)
  store i32 0, i32* %13, align 4
  br label %141

141:                                              ; preds = %163, %131
  %142 = load i32, i32* %13, align 4
  %143 = icmp slt i32 %142, 4
  br i1 %143, label %144, label %166

144:                                              ; preds = %141
  %145 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %146 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %145, i32 0, i32 6
  %147 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %146, i32 0, i32 0
  %148 = load i32*, i32** %147, align 8
  %149 = load i32, i32* %13, align 4
  %150 = sext i32 %149 to i64
  %151 = getelementptr inbounds i32, i32* %148, i64 %150
  %152 = load i32, i32* %151, align 4
  %153 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %154 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %153, i32 0, i32 2
  %155 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %154, i32 0, i32 0
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 0
  %157 = load i32*, i32** %156, align 8
  %158 = load i32, i32* %13, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds i32, i32* %157, i64 %159
  %161 = load i32, i32* %160, align 4
  %162 = and i32 %161, %152
  store i32 %162, i32* %160, align 4
  br label %163

163:                                              ; preds = %144
  %164 = load i32, i32* %13, align 4
  %165 = add nsw i32 %164, 1
  store i32 %165, i32* %13, align 4
  br label %141

166:                                              ; preds = %141
  %167 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %168 = call i32 @NDPR_UNLOCK(%struct.nd_prefix* %167)
  %169 = load i32, i32* @nd6_sched_timeout_want, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* @nd6_sched_timeout_want, align 4
  %171 = load i32*, i32** @nd6_mutex, align 8
  %172 = call i32 @lck_mtx_lock(i32* %171)
  %173 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %174 = load i32, i32* @ndpr_entry, align 4
  %175 = call i32 @LIST_INSERT_HEAD(i32* @nd_prefix, %struct.nd_prefix* %173, i32 %174)
  %176 = load i32, i32* @IFD_ATTACHED, align 4
  %177 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %178 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %177, i32 0, i32 5
  %179 = load i32, i32* %178, align 8
  %180 = or i32 %179, %176
  store i32 %180, i32* %178, align 8
  %181 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %182 = call i32 @NDPR_ADDREF(%struct.nd_prefix* %181)
  %183 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %184 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %183, i32 0, i32 2
  %185 = call i32 @lck_mtx_lock(i32* %184)
  %186 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %187 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %186, i32 0, i32 1
  %188 = load i64, i64* %187, align 8
  %189 = add nsw i64 %188, 1
  store i64 %189, i64* %187, align 8
  %190 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %191 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %190, i32 0, i32 1
  %192 = load i64, i64* %191, align 8
  %193 = icmp ne i64 %192, 0
  %194 = zext i1 %193 to i32
  %195 = call i32 @VERIFY(i32 %194)
  %196 = load %struct.nd_ifinfo*, %struct.nd_ifinfo** %12, align 8
  %197 = getelementptr inbounds %struct.nd_ifinfo, %struct.nd_ifinfo* %196, i32 0, i32 2
  %198 = call i32 @lck_mtx_unlock(i32* %197)
  %199 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %200 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %199, i32 0, i32 4
  %201 = load i64, i64* %200, align 8
  %202 = icmp ne i64 %201, 0
  br i1 %202, label %203, label %231

203:                                              ; preds = %166
  %204 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %205 = load i64, i64* %9, align 8
  %206 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %207 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %206, i32 0, i32 3
  %208 = load %struct.ifnet*, %struct.ifnet** %207, align 8
  %209 = getelementptr inbounds %struct.ifnet, %struct.ifnet* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @nd6_prefix_onlink_common(%struct.nd_prefix* %204, i64 %205, i32 %210)
  store i32 %211, i32* %15, align 4
  %212 = icmp ne i32 %211, 0
  br i1 %212, label %213, label %230

213:                                              ; preds = %203
  %214 = load i32, i32* @LOG_ERR, align 4
  %215 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %216 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %215, i32 0, i32 2
  %217 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %216, i32 0, i32 0
  %218 = call i32 @ip6_sprintf(%struct.TYPE_5__* %217)
  %219 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %220 = getelementptr inbounds %struct.nd_prefix, %struct.nd_prefix* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 4
  %222 = load i64, i64* %9, align 8
  %223 = icmp ne i64 %222, 0
  %224 = zext i1 %223 to i64
  %225 = select i1 %223, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0)
  %226 = load %struct.ifnet*, %struct.ifnet** %11, align 8
  %227 = call i32 @if_name(%struct.ifnet* %226)
  %228 = load i32, i32* %15, align 4
  %229 = call i32 @nd6log(i32 %228)
  br label %230

230:                                              ; preds = %213, %203
  br label %231

231:                                              ; preds = %230, %166
  %232 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %233 = icmp ne %struct.nd_defrouter* %232, null
  br i1 %233, label %234, label %238

234:                                              ; preds = %231
  %235 = load %struct.nd_prefix*, %struct.nd_prefix** %10, align 8
  %236 = load %struct.nd_defrouter*, %struct.nd_defrouter** %7, align 8
  %237 = call i32 @pfxrtr_add(%struct.nd_prefix* %235, %struct.nd_defrouter* %236)
  br label %238

238:                                              ; preds = %234, %231
  %239 = load i32*, i32** @nd6_mutex, align 8
  %240 = call i32 @lck_mtx_unlock(i32* %239)
  store i32 0, i32* %5, align 4
  br label %241

241:                                              ; preds = %238, %114, %58, %44
  %242 = load i32, i32* %5, align 4
  ret i32 %242
}

declare dso_local %struct.nd_ifinfo* @ND_IFINFO(%struct.ifnet*) #1

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

declare dso_local %struct.nd_prefix* @ndpr_alloc(i32) #1

declare dso_local i32 @NDPR_LOCK(%struct.nd_prefix*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @NDPR_UNLOCK(%struct.nd_prefix*) #1

declare dso_local i32 @in6_init_prefix_ltimes(%struct.nd_prefix*) #1

declare dso_local i32 @ndpr_free(%struct.nd_prefix*) #1

declare dso_local i32 @net_uptime(...) #1

declare dso_local i32 @NDPR_ADDREF_LOCKED(%struct.nd_prefix*) #1

declare dso_local i32 @LIST_INIT(i32*) #1

declare dso_local i32 @in6_prefixlen2mask(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @LIST_INSERT_HEAD(i32*, %struct.nd_prefix*, i32) #1

declare dso_local i32 @NDPR_ADDREF(%struct.nd_prefix*) #1

declare dso_local i32 @nd6_prefix_onlink_common(%struct.nd_prefix*, i64, i32) #1

declare dso_local i32 @nd6log(i32) #1

declare dso_local i32 @ip6_sprintf(%struct.TYPE_5__*) #1

declare dso_local i32 @if_name(%struct.ifnet*) #1

declare dso_local i32 @pfxrtr_add(%struct.nd_prefix*, %struct.nd_defrouter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
