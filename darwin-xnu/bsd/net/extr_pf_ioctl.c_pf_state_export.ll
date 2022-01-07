; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_state_export.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_pf_ioctl.c_pf_state_export.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pfsync_state = type { i32, i32, i64, i32, i32, i32, i32, i64, i32*, i32*, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_28__, %struct.TYPE_26__, %struct.TYPE_24__, %struct.TYPE_22__ }
%struct.TYPE_28__ = type { i32, i32 }
%struct.TYPE_26__ = type { i32, i32 }
%struct.TYPE_24__ = type { i32, i32 }
%struct.TYPE_22__ = type { i32, i32 }
%struct.pf_state_key = type { i32, i32, i32, i32, i32, i32, %struct.TYPE_29__, %struct.TYPE_27__, %struct.TYPE_25__, %struct.TYPE_23__ }
%struct.TYPE_29__ = type { i32, i32 }
%struct.TYPE_27__ = type { i32, i32 }
%struct.TYPE_25__ = type { i32, i32 }
%struct.TYPE_23__ = type { i32, i32 }
%struct.pf_state = type { i64, i64, i64, i32, i32, i32, i32*, i32*, %struct.TYPE_21__, %struct.TYPE_19__, %struct.TYPE_17__, i32, i32, %struct.TYPE_30__*, i32, i32, i32 }
%struct.TYPE_21__ = type { %struct.TYPE_20__* }
%struct.TYPE_20__ = type { i32 }
%struct.TYPE_19__ = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 }
%struct.TYPE_17__ = type { %struct.TYPE_16__* }
%struct.TYPE_16__ = type { i32 }
%struct.TYPE_30__ = type { i32 }

@PFSYNC_FLAG_SRCNODE = common dso_local global i32 0, align 4
@PFSYNC_FLAG_NATSRCNODE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.pfsync_state*, %struct.pf_state_key*, %struct.pf_state*)* @pf_state_export to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @pf_state_export(%struct.pfsync_state* %0, %struct.pf_state_key* %1, %struct.pf_state* %2) #0 {
  %4 = alloca %struct.pfsync_state*, align 8
  %5 = alloca %struct.pf_state_key*, align 8
  %6 = alloca %struct.pf_state*, align 8
  %7 = alloca i64, align 8
  store %struct.pfsync_state* %0, %struct.pfsync_state** %4, align 8
  store %struct.pf_state_key* %1, %struct.pf_state_key** %5, align 8
  store %struct.pf_state* %2, %struct.pf_state** %6, align 8
  %8 = call i64 (...) @pf_time_second()
  store i64 %8, i64* %7, align 8
  %9 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %10 = call i32 @bzero(%struct.pfsync_state* %9, i32 144)
  %11 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %12 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %11, i32 0, i32 9
  %13 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %16 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %15, i32 0, i32 26
  %17 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %16, i32 0, i32 1
  store i32 %14, i32* %17, align 4
  %18 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %19 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %18, i32 0, i32 9
  %20 = getelementptr inbounds %struct.TYPE_23__, %struct.TYPE_23__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %23 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %22, i32 0, i32 26
  %24 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %23, i32 0, i32 0
  store i32 %21, i32* %24, align 4
  %25 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %26 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %25, i32 0, i32 8
  %27 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %30 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %29, i32 0, i32 25
  %31 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %30, i32 0, i32 1
  store i32 %28, i32* %31, align 4
  %32 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %33 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %32, i32 0, i32 8
  %34 = getelementptr inbounds %struct.TYPE_25__, %struct.TYPE_25__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %37 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %36, i32 0, i32 25
  %38 = getelementptr inbounds %struct.TYPE_24__, %struct.TYPE_24__* %37, i32 0, i32 0
  store i32 %35, i32* %38, align 4
  %39 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %40 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %39, i32 0, i32 7
  %41 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %44 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %43, i32 0, i32 24
  %45 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %44, i32 0, i32 1
  store i32 %42, i32* %45, align 4
  %46 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %47 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %46, i32 0, i32 7
  %48 = getelementptr inbounds %struct.TYPE_27__, %struct.TYPE_27__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %51 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %50, i32 0, i32 24
  %52 = getelementptr inbounds %struct.TYPE_26__, %struct.TYPE_26__* %51, i32 0, i32 0
  store i32 %49, i32* %52, align 4
  %53 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %54 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %53, i32 0, i32 6
  %55 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %58 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %57, i32 0, i32 23
  %59 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %58, i32 0, i32 1
  store i32 %56, i32* %59, align 4
  %60 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %61 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %60, i32 0, i32 6
  %62 = getelementptr inbounds %struct.TYPE_29__, %struct.TYPE_29__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %65 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %64, i32 0, i32 23
  %66 = getelementptr inbounds %struct.TYPE_28__, %struct.TYPE_28__* %65, i32 0, i32 0
  store i32 %63, i32* %66, align 4
  %67 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %68 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %71 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %70, i32 0, i32 22
  store i32 %69, i32* %71, align 8
  %72 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %73 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %72, i32 0, i32 16
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %76 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %75, i32 0, i32 21
  store i32 %74, i32* %76, align 4
  %77 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %78 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %77, i32 0, i32 4
  %79 = load i32, i32* %78, align 4
  %80 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %81 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %80, i32 0, i32 20
  store i32 %79, i32* %81, align 8
  %82 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %83 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %86 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %85, i32 0, i32 19
  store i32 %84, i32* %86, align 4
  %87 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %88 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %87, i32 0, i32 2
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %91 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %90, i32 0, i32 18
  store i32 %89, i32* %91, align 8
  %92 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %93 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %96 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %95, i32 0, i32 17
  store i32 %94, i32* %96, align 4
  %97 = load %struct.pf_state_key*, %struct.pf_state_key** %5, align 8
  %98 = getelementptr inbounds %struct.pf_state_key, %struct.pf_state_key* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %101 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %100, i32 0, i32 16
  store i32 %99, i32* %101, align 8
  %102 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %103 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %102, i32 0, i32 15
  %104 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %105 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %104, i32 0, i32 15
  %106 = call i32 @memcpy(i32* %103, i32* %105, i32 4)
  %107 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %108 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %107, i32 0, i32 14
  %109 = load i32, i32* %108, align 8
  %110 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %111 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %110, i32 0, i32 14
  store i32 %109, i32* %111, align 8
  %112 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %113 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %112, i32 0, i32 13
  %114 = load i32, i32* %113, align 4
  %115 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %116 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %115, i32 0, i32 13
  %117 = load %struct.TYPE_30__*, %struct.TYPE_30__** %116, align 8
  %118 = getelementptr inbounds %struct.TYPE_30__, %struct.TYPE_30__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i32 @strlcpy(i32 %114, i32 %119, i32 4)
  %121 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %122 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %121, i32 0, i32 12
  %123 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %124 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %123, i32 0, i32 12
  %125 = call i32 @pf_state_peer_to_pfsync(i32* %122, i32* %124)
  %126 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %127 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %126, i32 0, i32 11
  %128 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %129 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %128, i32 0, i32 11
  %130 = call i32 @pf_state_peer_to_pfsync(i32* %127, i32* %129)
  %131 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %132 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %131, i32 0, i32 10
  %133 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_16__*, %struct.TYPE_16__** %133, align 8
  %135 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %138 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %137, i32 0, i32 10
  store i32 %136, i32* %138, align 8
  %139 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %140 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %139, i32 0, i32 9
  %141 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %140, i32 0, i32 0
  %142 = load %struct.TYPE_18__*, %struct.TYPE_18__** %141, align 8
  %143 = icmp eq %struct.TYPE_18__* %142, null
  br i1 %143, label %144, label %145

144:                                              ; preds = %3
  br label %152

145:                                              ; preds = %3
  %146 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %147 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %146, i32 0, i32 9
  %148 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %147, i32 0, i32 0
  %149 = load %struct.TYPE_18__*, %struct.TYPE_18__** %148, align 8
  %150 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  br label %152

152:                                              ; preds = %145, %144
  %153 = phi i32 [ -1, %144 ], [ %151, %145 ]
  %154 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %155 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %154, i32 0, i32 0
  store i32 %153, i32* %155, align 8
  %156 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %157 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %156, i32 0, i32 8
  %158 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %157, i32 0, i32 0
  %159 = load %struct.TYPE_20__*, %struct.TYPE_20__** %158, align 8
  %160 = icmp eq %struct.TYPE_20__* %159, null
  br i1 %160, label %161, label %162

161:                                              ; preds = %152
  br label %169

162:                                              ; preds = %152
  %163 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %164 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %163, i32 0, i32 8
  %165 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %164, i32 0, i32 0
  %166 = load %struct.TYPE_20__*, %struct.TYPE_20__** %165, align 8
  %167 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  br label %169

169:                                              ; preds = %162, %161
  %170 = phi i32 [ -1, %161 ], [ %168, %162 ]
  %171 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %172 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %171, i32 0, i32 1
  store i32 %170, i32* %172, align 4
  %173 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %174 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %173, i32 0, i32 7
  %175 = load i32*, i32** %174, align 8
  %176 = getelementptr inbounds i32, i32* %175, i64 0
  %177 = load i32, i32* %176, align 4
  %178 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %179 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %178, i32 0, i32 9
  %180 = load i32*, i32** %179, align 8
  %181 = getelementptr inbounds i32, i32* %180, i64 0
  %182 = load i32, i32* %181, align 4
  %183 = call i32 @pf_state_counter_to_pfsync(i32 %177, i32 %182)
  %184 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %185 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %184, i32 0, i32 7
  %186 = load i32*, i32** %185, align 8
  %187 = getelementptr inbounds i32, i32* %186, i64 1
  %188 = load i32, i32* %187, align 4
  %189 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %190 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %189, i32 0, i32 9
  %191 = load i32*, i32** %190, align 8
  %192 = getelementptr inbounds i32, i32* %191, i64 1
  %193 = load i32, i32* %192, align 4
  %194 = call i32 @pf_state_counter_to_pfsync(i32 %188, i32 %193)
  %195 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %196 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %195, i32 0, i32 6
  %197 = load i32*, i32** %196, align 8
  %198 = getelementptr inbounds i32, i32* %197, i64 0
  %199 = load i32, i32* %198, align 4
  %200 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %201 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %200, i32 0, i32 8
  %202 = load i32*, i32** %201, align 8
  %203 = getelementptr inbounds i32, i32* %202, i64 0
  %204 = load i32, i32* %203, align 4
  %205 = call i32 @pf_state_counter_to_pfsync(i32 %199, i32 %204)
  %206 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %207 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %206, i32 0, i32 6
  %208 = load i32*, i32** %207, align 8
  %209 = getelementptr inbounds i32, i32* %208, i64 1
  %210 = load i32, i32* %209, align 4
  %211 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %212 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %211, i32 0, i32 8
  %213 = load i32*, i32** %212, align 8
  %214 = getelementptr inbounds i32, i32* %213, i64 1
  %215 = load i32, i32* %214, align 4
  %216 = call i32 @pf_state_counter_to_pfsync(i32 %210, i32 %215)
  %217 = load i64, i64* %7, align 8
  %218 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %219 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %217, %220
  %222 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %223 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %222, i32 0, i32 7
  store i64 %221, i64* %223, align 8
  %224 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %225 = call i64 @pf_state_expires(%struct.pf_state* %224)
  %226 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %227 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %226, i32 0, i32 2
  store i64 %225, i64* %227, align 8
  %228 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %229 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %228, i32 0, i32 5
  %230 = load i32, i32* %229, align 8
  %231 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %232 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %231, i32 0, i32 6
  store i32 %230, i32* %232, align 4
  %233 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %234 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %233, i32 0, i32 4
  %235 = load i32, i32* %234, align 4
  %236 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %237 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %236, i32 0, i32 5
  store i32 %235, i32* %237, align 8
  %238 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %239 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %238, i32 0, i32 3
  %240 = load i32, i32* %239, align 8
  %241 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %242 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %241, i32 0, i32 4
  store i32 %240, i32* %242, align 4
  %243 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %244 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %243, i32 0, i32 2
  %245 = load i64, i64* %244, align 8
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %253

247:                                              ; preds = %169
  %248 = load i32, i32* @PFSYNC_FLAG_SRCNODE, align 4
  %249 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %250 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %249, i32 0, i32 3
  %251 = load i32, i32* %250, align 8
  %252 = or i32 %251, %248
  store i32 %252, i32* %250, align 8
  br label %253

253:                                              ; preds = %247, %169
  %254 = load %struct.pf_state*, %struct.pf_state** %6, align 8
  %255 = getelementptr inbounds %struct.pf_state, %struct.pf_state* %254, i32 0, i32 1
  %256 = load i64, i64* %255, align 8
  %257 = icmp ne i64 %256, 0
  br i1 %257, label %258, label %264

258:                                              ; preds = %253
  %259 = load i32, i32* @PFSYNC_FLAG_NATSRCNODE, align 4
  %260 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %261 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %260, i32 0, i32 3
  %262 = load i32, i32* %261, align 8
  %263 = or i32 %262, %259
  store i32 %263, i32* %261, align 8
  br label %264

264:                                              ; preds = %258, %253
  %265 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %266 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %265, i32 0, i32 2
  %267 = load i64, i64* %266, align 8
  %268 = load i64, i64* %7, align 8
  %269 = icmp sgt i64 %267, %268
  br i1 %269, label %270, label %276

270:                                              ; preds = %264
  %271 = load i64, i64* %7, align 8
  %272 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %273 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %272, i32 0, i32 2
  %274 = load i64, i64* %273, align 8
  %275 = sub nsw i64 %274, %271
  store i64 %275, i64* %273, align 8
  br label %279

276:                                              ; preds = %264
  %277 = load %struct.pfsync_state*, %struct.pfsync_state** %4, align 8
  %278 = getelementptr inbounds %struct.pfsync_state, %struct.pfsync_state* %277, i32 0, i32 2
  store i64 0, i64* %278, align 8
  br label %279

279:                                              ; preds = %276, %270
  ret void
}

declare dso_local i64 @pf_time_second(...) #1

declare dso_local i32 @bzero(%struct.pfsync_state*, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @strlcpy(i32, i32, i32) #1

declare dso_local i32 @pf_state_peer_to_pfsync(i32*, i32*) #1

declare dso_local i32 @pf_state_counter_to_pfsync(i32, i32) #1

declare dso_local i64 @pf_state_expires(%struct.pf_state*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
