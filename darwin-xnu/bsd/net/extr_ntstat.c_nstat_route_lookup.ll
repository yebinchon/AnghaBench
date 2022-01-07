; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_lookup.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_ntstat.c_nstat_route_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.radix_node_head = type { i32 }
%union.anon = type { %struct.sockaddr* }
%struct.sockaddr = type { i64 }
%struct.TYPE_12__ = type { i32, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_11__ = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i64, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i64, i32 }
%struct.TYPE_7__ = type { i64, i32 }
%struct.rtentry = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@AF_MAX = common dso_local global i64 0, align 8
@AF_INET = common dso_local global i64 0, align 8
@AF_INET6 = common dso_local global i64 0, align 8
@rt_tables = common dso_local global %struct.radix_node_head** null, align 8
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@rnh_lock = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, i32**)* @nstat_route_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nstat_route_lookup(i8* %0, i32 %1, i32** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32**, align 8
  %8 = alloca %union.anon, align 8
  %9 = alloca %union.anon, align 8
  %10 = alloca %struct.TYPE_12__*, align 8
  %11 = alloca %struct.radix_node_head*, align 8
  %12 = alloca %struct.rtentry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32** %2, i32*** %7, align 8
  %13 = load i8*, i8** %5, align 8
  %14 = bitcast i8* %13 to %struct.TYPE_12__*
  store %struct.TYPE_12__* %14, %struct.TYPE_12__** %10, align 8
  %15 = load i32**, i32*** %7, align 8
  store i32* null, i32** %15, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = icmp ult i64 %17, 56
  br i1 %18, label %19, label %21

19:                                               ; preds = %3
  %20 = load i32, i32* @EINVAL, align 4
  store i32 %20, i32* %4, align 4
  br label %175

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 2
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %55, label %28

28:                                               ; preds = %21
  %29 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %29, i32 0, i32 2
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @AF_MAX, align 8
  %35 = icmp sgt i64 %33, %34
  br i1 %35, label %55, label %36

36:                                               ; preds = %28
  %37 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %38 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %57

43:                                               ; preds = %36
  %44 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %48, %53
  br i1 %54, label %55, label %57

55:                                               ; preds = %43, %28, %21
  %56 = load i32, i32* @EINVAL, align 4
  store i32 %56, i32* %4, align 4
  br label %175

57:                                               ; preds = %43, %36
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 2
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = icmp ugt i64 %63, 32
  br i1 %64, label %80, label %65

65:                                               ; preds = %57
  %66 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 1
  %68 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %82

72:                                               ; preds = %65
  %73 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %73, i32 0, i32 1
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 8
  %78 = sext i32 %77 to i64
  %79 = icmp ugt i64 %78, 4
  br i1 %79, label %80, label %82

80:                                               ; preds = %72, %57
  %81 = load i32, i32* @EINVAL, align 4
  store i32 %81, i32* %4, align 4
  br label %175

82:                                               ; preds = %72, %65
  %83 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 2
  %85 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %84, i32 0, i32 1
  %86 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @AF_INET, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %90, label %98

90:                                               ; preds = %82
  %91 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 8
  %96 = sext i32 %95 to i64
  %97 = icmp ult i64 %96, 4
  br i1 %97, label %114, label %98

98:                                               ; preds = %90, %82
  %99 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 2
  %101 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %100, i32 0, i32 0
  %102 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = load i64, i64* @AF_INET6, align 8
  %105 = icmp eq i64 %103, %104
  br i1 %105, label %106, label %116

106:                                              ; preds = %98
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 2
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 8
  %112 = sext i32 %111 to i64
  %113 = icmp ult i64 %112, 4
  br i1 %113, label %114, label %116

114:                                              ; preds = %106, %90
  %115 = load i32, i32* @EINVAL, align 4
  store i32 %115, i32* %4, align 4
  br label %175

116:                                              ; preds = %106, %98
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 2
  %119 = bitcast %struct.TYPE_9__* %118 to %struct.sockaddr*
  %120 = bitcast %union.anon* %8 to %struct.sockaddr**
  store %struct.sockaddr* %119, %struct.sockaddr** %120, align 8
  %121 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %122 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %121, i32 0, i32 1
  %123 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %123, i32 0, i32 0
  %125 = load i64, i64* %124, align 8
  %126 = icmp ne i64 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %116
  %128 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %129 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %128, i32 0, i32 1
  %130 = bitcast %struct.TYPE_11__* %129 to %struct.sockaddr*
  br label %132

131:                                              ; preds = %116
  br label %132

132:                                              ; preds = %131, %127
  %133 = phi %struct.sockaddr* [ %130, %127 ], [ null, %131 ]
  %134 = bitcast %union.anon* %9 to %struct.sockaddr**
  store %struct.sockaddr* %133, %struct.sockaddr** %134, align 8
  %135 = load %struct.radix_node_head**, %struct.radix_node_head*** @rt_tables, align 8
  %136 = bitcast %union.anon* %8 to %struct.sockaddr**
  %137 = load %struct.sockaddr*, %struct.sockaddr** %136, align 8
  %138 = getelementptr inbounds %struct.sockaddr, %struct.sockaddr* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = getelementptr inbounds %struct.radix_node_head*, %struct.radix_node_head** %135, i64 %139
  %141 = load %struct.radix_node_head*, %struct.radix_node_head** %140, align 8
  store %struct.radix_node_head* %141, %struct.radix_node_head** %11, align 8
  %142 = load %struct.radix_node_head*, %struct.radix_node_head** %11, align 8
  %143 = icmp eq %struct.radix_node_head* %142, null
  br i1 %143, label %144, label %146

144:                                              ; preds = %132
  %145 = load i32, i32* @EAFNOSUPPORT, align 4
  store i32 %145, i32* %4, align 4
  br label %175

146:                                              ; preds = %132
  %147 = load i32, i32* @rnh_lock, align 4
  %148 = call i32 @lck_mtx_lock(i32 %147)
  %149 = load i32, i32* @TRUE, align 4
  %150 = bitcast %union.anon* %8 to %struct.sockaddr**
  %151 = load %struct.sockaddr*, %struct.sockaddr** %150, align 8
  %152 = bitcast %union.anon* %9 to %struct.sockaddr**
  %153 = load %struct.sockaddr*, %struct.sockaddr** %152, align 8
  %154 = load %struct.radix_node_head*, %struct.radix_node_head** %11, align 8
  %155 = load %struct.TYPE_12__*, %struct.TYPE_12__** %10, align 8
  %156 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = call %struct.rtentry* @rt_lookup(i32 %149, %struct.sockaddr* %151, %struct.sockaddr* %153, %struct.radix_node_head* %154, i32 %157)
  store %struct.rtentry* %158, %struct.rtentry** %12, align 8
  %159 = load i32, i32* @rnh_lock, align 4
  %160 = call i32 @lck_mtx_unlock(i32 %159)
  %161 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %162 = icmp ne %struct.rtentry* %161, null
  br i1 %162, label %163, label %167

163:                                              ; preds = %146
  %164 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %165 = bitcast %struct.rtentry* %164 to i32*
  %166 = load i32**, i32*** %7, align 8
  store i32* %165, i32** %166, align 8
  br label %167

167:                                              ; preds = %163, %146
  %168 = load %struct.rtentry*, %struct.rtentry** %12, align 8
  %169 = icmp ne %struct.rtentry* %168, null
  br i1 %169, label %170, label %171

170:                                              ; preds = %167
  br label %173

171:                                              ; preds = %167
  %172 = load i32, i32* @ENOENT, align 4
  br label %173

173:                                              ; preds = %171, %170
  %174 = phi i32 [ 0, %170 ], [ %172, %171 ]
  store i32 %174, i32* %4, align 4
  br label %175

175:                                              ; preds = %173, %144, %114, %80, %55, %19
  %176 = load i32, i32* %4, align 4
  ret i32 %176
}

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local %struct.rtentry* @rt_lookup(i32, %struct.sockaddr*, %struct.sockaddr*, %struct.radix_node_head*, i32) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
