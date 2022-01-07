; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sonewconn_internal.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/kern/extr_uipc_socket2.c_sonewconn_internal.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.socket*, %struct.TYPE_8__*, %struct.TYPE_9__, %struct.TYPE_10__, i32, i32, i32, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i64, %struct.TYPE_6__*, i32* (%struct.socket*, i32)* }
%struct.TYPE_7__ = type { i32, i32* }
%struct.TYPE_6__ = type { i64 (%struct.socket*, i32, i32*)* }
%struct.TYPE_9__ = type { i32, i32, %struct.socket* }
%struct.TYPE_10__ = type { i32, i32, %struct.socket* }

@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@soqlencomp = common dso_local global i32 0, align 4
@somaxconn = common dso_local global i32 0, align 4
@soqlimitcompat = common dso_local global i64 0, align 8
@SO_ACCEPTCONN = common dso_local global i32 0, align 4
@SS_NOFDREF = common dso_local global i32 0, align 4
@SOF_DELEGATED = common dso_local global i32 0, align 4
@SOF_NOSIGPIPE = common dso_local global i32 0, align 4
@SOF_NOADDRAVAIL = common dso_local global i32 0, align 4
@SOF_REUSESHAREUID = common dso_local global i32 0, align 4
@SOF_NOTIFYCONFLICT = common dso_local global i32 0, align 4
@SOF_BINDRANDOMPORT = common dso_local global i32 0, align 4
@SOF_NPX_SETOPTSHUT = common dso_local global i32 0, align 4
@SOF_NODEFUNCT = common dso_local global i32 0, align 4
@SOF_PRIVILEGED_TRAFFIC_CLASS = common dso_local global i32 0, align 4
@SOF_NOTSENT_LOWAT = common dso_local global i32 0, align 4
@SOF_USELRO = common dso_local global i32 0, align 4
@SB_RECV = common dso_local global i32 0, align 4
@SOF1_TRAFFIC_MGT_SO_BACKGROUND = common dso_local global i32 0, align 4
@SB_USRSIZE = common dso_local global i32 0, align 4
@SOF_INCOMP_INPROGRESS = common dso_local global i32 0, align 4
@so_list = common dso_local global i32 0, align 4
@SS_COMP = common dso_local global i32 0, align 4
@SS_INCOMP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.socket*, i32)* @sonewconn_internal to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @sonewconn_internal(%struct.socket* %0, i32 %1) #0 {
  %3 = alloca %struct.socket*, align 8
  %4 = alloca %struct.socket*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.socket*, align 8
  %9 = alloca i32*, align 8
  store %struct.socket* %0, %struct.socket** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %10 = load %struct.socket*, %struct.socket** %4, align 8
  %11 = getelementptr inbounds %struct.socket, %struct.socket* %10, i32 0, i32 12
  %12 = load %struct.TYPE_8__*, %struct.TYPE_8__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %12, i32 0, i32 3
  %14 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %13, align 8
  %15 = icmp ne i32* (%struct.socket*, i32)* %14, null
  br i1 %15, label %16, label %24

16:                                               ; preds = %2
  %17 = load %struct.socket*, %struct.socket** %4, align 8
  %18 = getelementptr inbounds %struct.socket, %struct.socket* %17, i32 0, i32 12
  %19 = load %struct.TYPE_8__*, %struct.TYPE_8__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %19, i32 0, i32 3
  %21 = load i32* (%struct.socket*, i32)*, i32* (%struct.socket*, i32)** %20, align 8
  %22 = load %struct.socket*, %struct.socket** %4, align 8
  %23 = call i32* %21(%struct.socket* %22, i32 0)
  store i32* %23, i32** %9, align 8
  br label %32

24:                                               ; preds = %2
  %25 = load %struct.socket*, %struct.socket** %4, align 8
  %26 = getelementptr inbounds %struct.socket, %struct.socket* %25, i32 0, i32 12
  %27 = load %struct.TYPE_8__*, %struct.TYPE_8__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %27, i32 0, i32 0
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %9, align 8
  br label %32

32:                                               ; preds = %24, %16
  %33 = load i32*, i32** %9, align 8
  %34 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %35 = call i32 @LCK_MTX_ASSERT(i32* %33, i32 %34)
  %36 = load i32, i32* @soqlencomp, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %32
  %39 = load %struct.socket*, %struct.socket** %4, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  store i32 %41, i32* %6, align 4
  br label %58

42:                                               ; preds = %32
  %43 = load %struct.socket*, %struct.socket** %4, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.socket*, %struct.socket** %4, align 8
  %47 = getelementptr inbounds %struct.socket, %struct.socket* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = sub nsw i32 %45, %48
  store i32 %49, i32* %6, align 4
  %50 = load %struct.socket*, %struct.socket** %4, align 8
  %51 = getelementptr inbounds %struct.socket, %struct.socket* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = load i32, i32* @somaxconn, align 4
  %54 = icmp sgt i32 %52, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %42
  %56 = load i32, i32* @somaxconn, align 4
  store i32 %56, i32* %6, align 4
  br label %57

57:                                               ; preds = %55, %42
  br label %58

58:                                               ; preds = %57, %38
  %59 = load i32, i32* %6, align 4
  %60 = load i64, i64* @soqlimitcompat, align 8
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %58
  %63 = load %struct.socket*, %struct.socket** %4, align 8
  %64 = getelementptr inbounds %struct.socket, %struct.socket* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  br label %72

66:                                               ; preds = %58
  %67 = load %struct.socket*, %struct.socket** %4, align 8
  %68 = getelementptr inbounds %struct.socket, %struct.socket* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = mul nsw i32 3, %69
  %71 = sdiv i32 %70, 2
  br label %72

72:                                               ; preds = %66, %62
  %73 = phi i32 [ %65, %62 ], [ %71, %66 ]
  %74 = icmp sge i32 %59, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %72
  store %struct.socket* null, %struct.socket** %3, align 8
  br label %424

76:                                               ; preds = %72
  %77 = load %struct.socket*, %struct.socket** %4, align 8
  %78 = call i32 @SOCK_DOM(%struct.socket* %77)
  %79 = load %struct.socket*, %struct.socket** %4, align 8
  %80 = getelementptr inbounds %struct.socket, %struct.socket* %79, i32 0, i32 29
  %81 = load i32, i32* %80, align 4
  %82 = call %struct.socket* @soalloc(i32 1, i32 %78, i32 %81)
  store %struct.socket* %82, %struct.socket** %8, align 8
  %83 = load %struct.socket*, %struct.socket** %8, align 8
  %84 = icmp eq %struct.socket* %83, null
  br i1 %84, label %85, label %86

85:                                               ; preds = %76
  store %struct.socket* null, %struct.socket** %3, align 8
  br label %424

86:                                               ; preds = %76
  %87 = load %struct.socket*, %struct.socket** %4, align 8
  %88 = getelementptr inbounds %struct.socket, %struct.socket* %87, i32 0, i32 12
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %88, align 8
  %90 = icmp eq %struct.TYPE_8__* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load %struct.socket*, %struct.socket** %8, align 8
  %93 = call i32 @sodealloc(%struct.socket* %92)
  store %struct.socket* null, %struct.socket** %3, align 8
  br label %424

94:                                               ; preds = %86
  %95 = load %struct.socket*, %struct.socket** %4, align 8
  %96 = getelementptr inbounds %struct.socket, %struct.socket* %95, i32 0, i32 29
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.socket*, %struct.socket** %8, align 8
  %99 = getelementptr inbounds %struct.socket, %struct.socket* %98, i32 0, i32 29
  store i32 %97, i32* %99, align 4
  %100 = load %struct.socket*, %struct.socket** %4, align 8
  %101 = getelementptr inbounds %struct.socket, %struct.socket* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = load i32, i32* @SO_ACCEPTCONN, align 4
  %104 = xor i32 %103, -1
  %105 = and i32 %102, %104
  %106 = load %struct.socket*, %struct.socket** %8, align 8
  %107 = getelementptr inbounds %struct.socket, %struct.socket* %106, i32 0, i32 3
  store i32 %105, i32* %107, align 4
  %108 = load %struct.socket*, %struct.socket** %4, align 8
  %109 = getelementptr inbounds %struct.socket, %struct.socket* %108, i32 0, i32 28
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.socket*, %struct.socket** %8, align 8
  %112 = getelementptr inbounds %struct.socket, %struct.socket* %111, i32 0, i32 28
  store i32 %110, i32* %112, align 8
  %113 = load %struct.socket*, %struct.socket** %4, align 8
  %114 = getelementptr inbounds %struct.socket, %struct.socket* %113, i32 0, i32 4
  %115 = load i32, i32* %114, align 8
  %116 = load i32, i32* @SS_NOFDREF, align 4
  %117 = or i32 %115, %116
  %118 = load %struct.socket*, %struct.socket** %8, align 8
  %119 = getelementptr inbounds %struct.socket, %struct.socket* %118, i32 0, i32 4
  store i32 %117, i32* %119, align 8
  %120 = load %struct.socket*, %struct.socket** %4, align 8
  %121 = getelementptr inbounds %struct.socket, %struct.socket* %120, i32 0, i32 12
  %122 = load %struct.TYPE_8__*, %struct.TYPE_8__** %121, align 8
  %123 = load %struct.socket*, %struct.socket** %8, align 8
  %124 = getelementptr inbounds %struct.socket, %struct.socket* %123, i32 0, i32 12
  store %struct.TYPE_8__* %122, %struct.TYPE_8__** %124, align 8
  %125 = load %struct.socket*, %struct.socket** %4, align 8
  %126 = getelementptr inbounds %struct.socket, %struct.socket* %125, i32 0, i32 8
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.socket*, %struct.socket** %8, align 8
  %129 = getelementptr inbounds %struct.socket, %struct.socket* %128, i32 0, i32 8
  store i32 %127, i32* %129, align 8
  %130 = load %struct.socket*, %struct.socket** %4, align 8
  %131 = getelementptr inbounds %struct.socket, %struct.socket* %130, i32 0, i32 27
  %132 = load i32, i32* %131, align 4
  %133 = load %struct.socket*, %struct.socket** %8, align 8
  %134 = getelementptr inbounds %struct.socket, %struct.socket* %133, i32 0, i32 27
  store i32 %132, i32* %134, align 4
  %135 = load %struct.socket*, %struct.socket** %4, align 8
  %136 = getelementptr inbounds %struct.socket, %struct.socket* %135, i32 0, i32 26
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @kauth_cred_ref(i32 %137)
  %139 = load %struct.socket*, %struct.socket** %4, align 8
  %140 = getelementptr inbounds %struct.socket, %struct.socket* %139, i32 0, i32 26
  %141 = load i32, i32* %140, align 8
  %142 = load %struct.socket*, %struct.socket** %8, align 8
  %143 = getelementptr inbounds %struct.socket, %struct.socket* %142, i32 0, i32 26
  store i32 %141, i32* %143, align 8
  %144 = load %struct.socket*, %struct.socket** %4, align 8
  %145 = getelementptr inbounds %struct.socket, %struct.socket* %144, i32 0, i32 25
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.socket*, %struct.socket** %8, align 8
  %148 = getelementptr inbounds %struct.socket, %struct.socket* %147, i32 0, i32 25
  store i32 %146, i32* %148, align 4
  %149 = load %struct.socket*, %struct.socket** %4, align 8
  %150 = getelementptr inbounds %struct.socket, %struct.socket* %149, i32 0, i32 24
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.socket*, %struct.socket** %8, align 8
  %153 = getelementptr inbounds %struct.socket, %struct.socket* %152, i32 0, i32 24
  store i32 %151, i32* %153, align 8
  %154 = load %struct.socket*, %struct.socket** %8, align 8
  %155 = getelementptr inbounds %struct.socket, %struct.socket* %154, i32 0, i32 23
  %156 = load i32, i32* %155, align 4
  %157 = load %struct.socket*, %struct.socket** %4, align 8
  %158 = getelementptr inbounds %struct.socket, %struct.socket* %157, i32 0, i32 23
  %159 = load i32, i32* %158, align 4
  %160 = call i32 @memcpy(i32 %156, i32 %159, i32 4)
  %161 = load %struct.socket*, %struct.socket** %4, align 8
  %162 = getelementptr inbounds %struct.socket, %struct.socket* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @SOF_DELEGATED, align 4
  %165 = and i32 %163, %164
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %185

167:                                              ; preds = %94
  %168 = load %struct.socket*, %struct.socket** %4, align 8
  %169 = getelementptr inbounds %struct.socket, %struct.socket* %168, i32 0, i32 22
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.socket*, %struct.socket** %8, align 8
  %172 = getelementptr inbounds %struct.socket, %struct.socket* %171, i32 0, i32 22
  store i32 %170, i32* %172, align 8
  %173 = load %struct.socket*, %struct.socket** %4, align 8
  %174 = getelementptr inbounds %struct.socket, %struct.socket* %173, i32 0, i32 21
  %175 = load i32, i32* %174, align 4
  %176 = load %struct.socket*, %struct.socket** %8, align 8
  %177 = getelementptr inbounds %struct.socket, %struct.socket* %176, i32 0, i32 21
  store i32 %175, i32* %177, align 4
  %178 = load %struct.socket*, %struct.socket** %8, align 8
  %179 = getelementptr inbounds %struct.socket, %struct.socket* %178, i32 0, i32 20
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.socket*, %struct.socket** %4, align 8
  %182 = getelementptr inbounds %struct.socket, %struct.socket* %181, i32 0, i32 20
  %183 = load i32, i32* %182, align 8
  %184 = call i32 @memcpy(i32 %180, i32 %183, i32 4)
  br label %185

185:                                              ; preds = %167, %94
  %186 = load %struct.socket*, %struct.socket** %4, align 8
  %187 = getelementptr inbounds %struct.socket, %struct.socket* %186, i32 0, i32 5
  %188 = load i32, i32* %187, align 4
  %189 = load i32, i32* @SOF_NOSIGPIPE, align 4
  %190 = load i32, i32* @SOF_NOADDRAVAIL, align 4
  %191 = or i32 %189, %190
  %192 = load i32, i32* @SOF_REUSESHAREUID, align 4
  %193 = or i32 %191, %192
  %194 = load i32, i32* @SOF_NOTIFYCONFLICT, align 4
  %195 = or i32 %193, %194
  %196 = load i32, i32* @SOF_BINDRANDOMPORT, align 4
  %197 = or i32 %195, %196
  %198 = load i32, i32* @SOF_NPX_SETOPTSHUT, align 4
  %199 = or i32 %197, %198
  %200 = load i32, i32* @SOF_NODEFUNCT, align 4
  %201 = or i32 %199, %200
  %202 = load i32, i32* @SOF_PRIVILEGED_TRAFFIC_CLASS, align 4
  %203 = or i32 %201, %202
  %204 = load i32, i32* @SOF_NOTSENT_LOWAT, align 4
  %205 = or i32 %203, %204
  %206 = load i32, i32* @SOF_USELRO, align 4
  %207 = or i32 %205, %206
  %208 = load i32, i32* @SOF_DELEGATED, align 4
  %209 = or i32 %207, %208
  %210 = and i32 %188, %209
  %211 = load %struct.socket*, %struct.socket** %8, align 8
  %212 = getelementptr inbounds %struct.socket, %struct.socket* %211, i32 0, i32 5
  store i32 %210, i32* %212, align 4
  %213 = load %struct.socket*, %struct.socket** %8, align 8
  %214 = getelementptr inbounds %struct.socket, %struct.socket* %213, i32 0, i32 6
  store i32 1, i32* %214, align 8
  %215 = load %struct.socket*, %struct.socket** %8, align 8
  %216 = getelementptr inbounds %struct.socket, %struct.socket* %215, i32 0, i32 19
  store i64 0, i64* %216, align 8
  %217 = load %struct.socket*, %struct.socket** %8, align 8
  %218 = getelementptr inbounds %struct.socket, %struct.socket* %217, i32 0, i32 18
  store i64 0, i64* %218, align 8
  %219 = load i32, i32* @SB_RECV, align 4
  %220 = load %struct.socket*, %struct.socket** %8, align 8
  %221 = getelementptr inbounds %struct.socket, %struct.socket* %220, i32 0, i32 14
  %222 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %221, i32 0, i32 0
  %223 = load i32, i32* %222, align 8
  %224 = or i32 %223, %219
  store i32 %224, i32* %222, align 8
  %225 = load %struct.socket*, %struct.socket** %8, align 8
  %226 = load %struct.socket*, %struct.socket** %8, align 8
  %227 = getelementptr inbounds %struct.socket, %struct.socket* %226, i32 0, i32 13
  %228 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %227, i32 0, i32 2
  store %struct.socket* %225, %struct.socket** %228, align 8
  %229 = load %struct.socket*, %struct.socket** %8, align 8
  %230 = getelementptr inbounds %struct.socket, %struct.socket* %229, i32 0, i32 14
  %231 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %230, i32 0, i32 2
  store %struct.socket* %225, %struct.socket** %231, align 8
  %232 = load %struct.socket*, %struct.socket** %8, align 8
  %233 = getelementptr inbounds %struct.socket, %struct.socket* %232, i32 0, i32 17
  %234 = call i32 @TAILQ_INIT(i32* %233)
  %235 = load %struct.socket*, %struct.socket** %4, align 8
  %236 = getelementptr inbounds %struct.socket, %struct.socket* %235, i32 0, i32 7
  %237 = load i32, i32* %236, align 4
  %238 = load i32, i32* @SOF1_TRAFFIC_MGT_SO_BACKGROUND, align 4
  %239 = and i32 %237, %238
  %240 = load %struct.socket*, %struct.socket** %8, align 8
  %241 = getelementptr inbounds %struct.socket, %struct.socket* %240, i32 0, i32 7
  %242 = load i32, i32* %241, align 4
  %243 = or i32 %242, %239
  store i32 %243, i32* %241, align 4
  %244 = load %struct.socket*, %struct.socket** %4, align 8
  %245 = getelementptr inbounds %struct.socket, %struct.socket* %244, i32 0, i32 16
  %246 = load i32, i32* %245, align 4
  %247 = load %struct.socket*, %struct.socket** %8, align 8
  %248 = getelementptr inbounds %struct.socket, %struct.socket* %247, i32 0, i32 16
  store i32 %246, i32* %248, align 4
  %249 = load %struct.socket*, %struct.socket** %4, align 8
  %250 = getelementptr inbounds %struct.socket, %struct.socket* %249, i32 0, i32 15
  %251 = load i32, i32* %250, align 8
  %252 = load %struct.socket*, %struct.socket** %8, align 8
  %253 = getelementptr inbounds %struct.socket, %struct.socket* %252, i32 0, i32 15
  store i32 %251, i32* %253, align 8
  %254 = load %struct.socket*, %struct.socket** %8, align 8
  %255 = load %struct.socket*, %struct.socket** %4, align 8
  %256 = getelementptr inbounds %struct.socket, %struct.socket* %255, i32 0, i32 13
  %257 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %256, i32 0, i32 1
  %258 = load i32, i32* %257, align 4
  %259 = load %struct.socket*, %struct.socket** %4, align 8
  %260 = getelementptr inbounds %struct.socket, %struct.socket* %259, i32 0, i32 14
  %261 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %260, i32 0, i32 1
  %262 = load i32, i32* %261, align 4
  %263 = call i64 @soreserve(%struct.socket* %254, i32 %258, i32 %262)
  %264 = icmp ne i64 %263, 0
  br i1 %264, label %265, label %268

265:                                              ; preds = %185
  %266 = load %struct.socket*, %struct.socket** %8, align 8
  %267 = call i32 @sodealloc(%struct.socket* %266)
  store %struct.socket* null, %struct.socket** %3, align 8
  br label %424

268:                                              ; preds = %185
  %269 = load %struct.socket*, %struct.socket** %4, align 8
  %270 = getelementptr inbounds %struct.socket, %struct.socket* %269, i32 0, i32 14
  %271 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %270, i32 0, i32 0
  %272 = load i32, i32* %271, align 8
  %273 = load i32, i32* @SB_USRSIZE, align 4
  %274 = and i32 %272, %273
  %275 = load %struct.socket*, %struct.socket** %8, align 8
  %276 = getelementptr inbounds %struct.socket, %struct.socket* %275, i32 0, i32 14
  %277 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %276, i32 0, i32 0
  %278 = load i32, i32* %277, align 8
  %279 = or i32 %278, %274
  store i32 %279, i32* %277, align 8
  %280 = load %struct.socket*, %struct.socket** %4, align 8
  %281 = getelementptr inbounds %struct.socket, %struct.socket* %280, i32 0, i32 13
  %282 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %281, i32 0, i32 0
  %283 = load i32, i32* %282, align 8
  %284 = load i32, i32* @SB_USRSIZE, align 4
  %285 = and i32 %283, %284
  %286 = load %struct.socket*, %struct.socket** %8, align 8
  %287 = getelementptr inbounds %struct.socket, %struct.socket* %286, i32 0, i32 13
  %288 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %287, i32 0, i32 0
  %289 = load i32, i32* %288, align 8
  %290 = or i32 %289, %285
  store i32 %290, i32* %288, align 8
  %291 = load %struct.socket*, %struct.socket** %4, align 8
  %292 = getelementptr inbounds %struct.socket, %struct.socket* %291, i32 0, i32 12
  %293 = load %struct.TYPE_8__*, %struct.TYPE_8__** %292, align 8
  %294 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %293, i32 0, i32 1
  %295 = load i64, i64* %294, align 8
  %296 = icmp ne i64 %295, 0
  br i1 %296, label %297, label %300

297:                                              ; preds = %268
  %298 = load %struct.socket*, %struct.socket** %4, align 8
  %299 = call i32 @socket_unlock(%struct.socket* %298, i32 0)
  br label %300

300:                                              ; preds = %297, %268
  %301 = load %struct.socket*, %struct.socket** %8, align 8
  %302 = getelementptr inbounds %struct.socket, %struct.socket* %301, i32 0, i32 12
  %303 = load %struct.TYPE_8__*, %struct.TYPE_8__** %302, align 8
  %304 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %303, i32 0, i32 2
  %305 = load %struct.TYPE_6__*, %struct.TYPE_6__** %304, align 8
  %306 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %305, i32 0, i32 0
  %307 = load i64 (%struct.socket*, i32, i32*)*, i64 (%struct.socket*, i32, i32*)** %306, align 8
  %308 = load %struct.socket*, %struct.socket** %8, align 8
  %309 = call i64 %307(%struct.socket* %308, i32 0, i32* null)
  %310 = icmp ne i64 %309, 0
  br i1 %310, label %314, label %311

311:                                              ; preds = %300
  %312 = load i32, i32* %7, align 4
  %313 = icmp ne i32 %312, 0
  br i1 %313, label %314, label %327

314:                                              ; preds = %311, %300
  %315 = load %struct.socket*, %struct.socket** %8, align 8
  %316 = call i32 @sodealloc(%struct.socket* %315)
  %317 = load %struct.socket*, %struct.socket** %4, align 8
  %318 = getelementptr inbounds %struct.socket, %struct.socket* %317, i32 0, i32 12
  %319 = load %struct.TYPE_8__*, %struct.TYPE_8__** %318, align 8
  %320 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %319, i32 0, i32 1
  %321 = load i64, i64* %320, align 8
  %322 = icmp ne i64 %321, 0
  br i1 %322, label %323, label %326

323:                                              ; preds = %314
  %324 = load %struct.socket*, %struct.socket** %4, align 8
  %325 = call i32 @socket_lock(%struct.socket* %324, i32 0)
  br label %326

326:                                              ; preds = %323, %314
  store %struct.socket* null, %struct.socket** %3, align 8
  br label %424

327:                                              ; preds = %311
  %328 = load %struct.socket*, %struct.socket** %4, align 8
  %329 = getelementptr inbounds %struct.socket, %struct.socket* %328, i32 0, i32 12
  %330 = load %struct.TYPE_8__*, %struct.TYPE_8__** %329, align 8
  %331 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %330, i32 0, i32 1
  %332 = load i64, i64* %331, align 8
  %333 = icmp ne i64 %332, 0
  br i1 %333, label %334, label %353

334:                                              ; preds = %327
  %335 = load %struct.socket*, %struct.socket** %4, align 8
  %336 = call i32 @socket_lock(%struct.socket* %335, i32 0)
  %337 = load %struct.socket*, %struct.socket** %4, align 8
  %338 = getelementptr inbounds %struct.socket, %struct.socket* %337, i32 0, i32 3
  %339 = load i32, i32* %338, align 4
  %340 = load i32, i32* @SO_ACCEPTCONN, align 4
  %341 = and i32 %339, %340
  %342 = icmp eq i32 %341, 0
  br i1 %342, label %343, label %352

343:                                              ; preds = %334
  %344 = load i32, i32* @SS_NOFDREF, align 4
  %345 = xor i32 %344, -1
  %346 = load %struct.socket*, %struct.socket** %8, align 8
  %347 = getelementptr inbounds %struct.socket, %struct.socket* %346, i32 0, i32 4
  %348 = load i32, i32* %347, align 8
  %349 = and i32 %348, %345
  store i32 %349, i32* %347, align 8
  %350 = load %struct.socket*, %struct.socket** %8, align 8
  %351 = call i32 @soclose(%struct.socket* %350)
  store %struct.socket* null, %struct.socket** %3, align 8
  br label %424

352:                                              ; preds = %334
  br label %353

353:                                              ; preds = %352, %327
  %354 = load %struct.socket*, %struct.socket** %8, align 8
  %355 = getelementptr inbounds %struct.socket, %struct.socket* %354, i32 0, i32 12
  %356 = load %struct.TYPE_8__*, %struct.TYPE_8__** %355, align 8
  %357 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %356, i32 0, i32 0
  %358 = load %struct.TYPE_7__*, %struct.TYPE_7__** %357, align 8
  %359 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %358, i32 0, i32 0
  %360 = call i32 @atomic_add_32(i32* %359, i32 1)
  %361 = load %struct.socket*, %struct.socket** %4, align 8
  %362 = call i32 @so_acquire_accept_list(%struct.socket* %361, i32* null)
  %363 = load %struct.socket*, %struct.socket** %4, align 8
  %364 = load %struct.socket*, %struct.socket** %8, align 8
  %365 = getelementptr inbounds %struct.socket, %struct.socket* %364, i32 0, i32 11
  store %struct.socket* %363, %struct.socket** %365, align 8
  %366 = load i32, i32* @SOF_INCOMP_INPROGRESS, align 4
  %367 = load %struct.socket*, %struct.socket** %8, align 8
  %368 = getelementptr inbounds %struct.socket, %struct.socket* %367, i32 0, i32 5
  %369 = load i32, i32* %368, align 4
  %370 = or i32 %369, %366
  store i32 %370, i32* %368, align 4
  %371 = load i32, i32* %5, align 4
  %372 = icmp ne i32 %371, 0
  br i1 %372, label %373, label %384

373:                                              ; preds = %353
  %374 = load %struct.socket*, %struct.socket** %4, align 8
  %375 = getelementptr inbounds %struct.socket, %struct.socket* %374, i32 0, i32 10
  %376 = load %struct.socket*, %struct.socket** %8, align 8
  %377 = load i32, i32* @so_list, align 4
  %378 = call i32 @TAILQ_INSERT_TAIL(i32* %375, %struct.socket* %376, i32 %377)
  %379 = load i32, i32* @SS_COMP, align 4
  %380 = load %struct.socket*, %struct.socket** %8, align 8
  %381 = getelementptr inbounds %struct.socket, %struct.socket* %380, i32 0, i32 4
  %382 = load i32, i32* %381, align 8
  %383 = or i32 %382, %379
  store i32 %383, i32* %381, align 8
  br label %399

384:                                              ; preds = %353
  %385 = load %struct.socket*, %struct.socket** %4, align 8
  %386 = getelementptr inbounds %struct.socket, %struct.socket* %385, i32 0, i32 9
  %387 = load %struct.socket*, %struct.socket** %8, align 8
  %388 = load i32, i32* @so_list, align 4
  %389 = call i32 @TAILQ_INSERT_TAIL(i32* %386, %struct.socket* %387, i32 %388)
  %390 = load i32, i32* @SS_INCOMP, align 4
  %391 = load %struct.socket*, %struct.socket** %8, align 8
  %392 = getelementptr inbounds %struct.socket, %struct.socket* %391, i32 0, i32 4
  %393 = load i32, i32* %392, align 8
  %394 = or i32 %393, %390
  store i32 %394, i32* %392, align 8
  %395 = load %struct.socket*, %struct.socket** %4, align 8
  %396 = getelementptr inbounds %struct.socket, %struct.socket* %395, i32 0, i32 1
  %397 = load i32, i32* %396, align 4
  %398 = add nsw i32 %397, 1
  store i32 %398, i32* %396, align 4
  br label %399

399:                                              ; preds = %384, %373
  %400 = load %struct.socket*, %struct.socket** %4, align 8
  %401 = getelementptr inbounds %struct.socket, %struct.socket* %400, i32 0, i32 0
  %402 = load i32, i32* %401, align 8
  %403 = add nsw i32 %402, 1
  store i32 %403, i32* %401, align 8
  %404 = load %struct.socket*, %struct.socket** %4, align 8
  %405 = call i32 @so_release_accept_list(%struct.socket* %404)
  %406 = load %struct.socket*, %struct.socket** %8, align 8
  %407 = call i32 @sflt_initsock(%struct.socket* %406)
  %408 = load i32, i32* %5, align 4
  %409 = icmp ne i32 %408, 0
  br i1 %409, label %410, label %422

410:                                              ; preds = %399
  %411 = load i32, i32* %5, align 4
  %412 = load %struct.socket*, %struct.socket** %8, align 8
  %413 = getelementptr inbounds %struct.socket, %struct.socket* %412, i32 0, i32 4
  %414 = load i32, i32* %413, align 8
  %415 = or i32 %414, %411
  store i32 %415, i32* %413, align 8
  %416 = load %struct.socket*, %struct.socket** %4, align 8
  %417 = call i32 @sorwakeup(%struct.socket* %416)
  %418 = load %struct.socket*, %struct.socket** %4, align 8
  %419 = getelementptr inbounds %struct.socket, %struct.socket* %418, i32 0, i32 8
  %420 = ptrtoint i32* %419 to i32
  %421 = call i32 @wakeup(i32 %420)
  br label %422

422:                                              ; preds = %410, %399
  %423 = load %struct.socket*, %struct.socket** %8, align 8
  store %struct.socket* %423, %struct.socket** %3, align 8
  br label %424

424:                                              ; preds = %422, %343, %326, %265, %91, %85, %75
  %425 = load %struct.socket*, %struct.socket** %3, align 8
  ret %struct.socket* %425
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local %struct.socket* @soalloc(i32, i32, i32) #1

declare dso_local i32 @SOCK_DOM(%struct.socket*) #1

declare dso_local i32 @sodealloc(%struct.socket*) #1

declare dso_local i32 @kauth_cred_ref(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i32 @TAILQ_INIT(i32*) #1

declare dso_local i64 @soreserve(%struct.socket*, i32, i32) #1

declare dso_local i32 @socket_unlock(%struct.socket*, i32) #1

declare dso_local i32 @socket_lock(%struct.socket*, i32) #1

declare dso_local i32 @soclose(%struct.socket*) #1

declare dso_local i32 @atomic_add_32(i32*, i32) #1

declare dso_local i32 @so_acquire_accept_list(%struct.socket*, i32*) #1

declare dso_local i32 @TAILQ_INSERT_TAIL(i32*, %struct.socket*, i32) #1

declare dso_local i32 @so_release_accept_list(%struct.socket*) #1

declare dso_local i32 @sflt_initsock(%struct.socket*) #1

declare dso_local i32 @sorwakeup(%struct.socket*) #1

declare dso_local i32 @wakeup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
