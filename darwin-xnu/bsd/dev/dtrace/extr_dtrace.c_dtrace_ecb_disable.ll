; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_ecb_disable.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/dev/dtrace/extr_dtrace.c_dtrace_ecb_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_11__ = type { %struct.TYPE_11__*, %struct.TYPE_10__*, %struct.TYPE_9__* }
%struct.TYPE_10__ = type { i64 }
%struct.TYPE_9__ = type { i64, %struct.TYPE_11__*, %struct.TYPE_11__*, i32, i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32, %struct.TYPE_7__, i32 }
%struct.TYPE_7__ = type { i32 (i32, i32, i32)* }

@dtrace_lock = common dso_local global i32 0, align 4
@LCK_MTX_ASSERT_OWNED = common dso_local global i32 0, align 4
@DTRACE_CACHEIDNONE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_11__*)* @dtrace_ecb_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dtrace_ecb_disable(%struct.TYPE_11__* %0) #0 {
  %2 = alloca %struct.TYPE_11__*, align 8
  %3 = alloca %struct.TYPE_11__*, align 8
  %4 = alloca %struct.TYPE_11__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca %struct.TYPE_8__*, align 8
  %7 = alloca %struct.TYPE_10__*, align 8
  store %struct.TYPE_11__* %0, %struct.TYPE_11__** %2, align 8
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %4, align 8
  %8 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %9 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 2
  %10 = load %struct.TYPE_9__*, %struct.TYPE_9__** %9, align 8
  store %struct.TYPE_9__* %10, %struct.TYPE_9__** %5, align 8
  %11 = load i32, i32* @LCK_MTX_ASSERT_OWNED, align 4
  %12 = call i32 @LCK_MTX_ASSERT(i32* @dtrace_lock, i32 %11)
  %13 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %14 = icmp eq %struct.TYPE_9__* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %1
  br label %162

16:                                               ; preds = %1
  %17 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 1
  %19 = load %struct.TYPE_11__*, %struct.TYPE_11__** %18, align 8
  store %struct.TYPE_11__* %19, %struct.TYPE_11__** %3, align 8
  br label %20

20:                                               ; preds = %30, %16
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %22 = icmp ne %struct.TYPE_11__* %21, null
  br i1 %22, label %23, label %34

23:                                               ; preds = %20
  %24 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %25 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %26 = icmp eq %struct.TYPE_11__* %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %23
  br label %34

28:                                               ; preds = %23
  %29 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  store %struct.TYPE_11__* %29, %struct.TYPE_11__** %4, align 8
  br label %30

30:                                               ; preds = %28
  %31 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_11__*, %struct.TYPE_11__** %32, align 8
  store %struct.TYPE_11__* %33, %struct.TYPE_11__** %3, align 8
  br label %20

34:                                               ; preds = %27, %20
  %35 = load %struct.TYPE_11__*, %struct.TYPE_11__** %3, align 8
  %36 = icmp ne %struct.TYPE_11__* %35, null
  %37 = zext i1 %36 to i32
  %38 = call i32 @ASSERT(i32 %37)
  %39 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %40 = icmp eq %struct.TYPE_11__* %39, null
  br i1 %40, label %41, label %47

41:                                               ; preds = %34
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_11__*, %struct.TYPE_11__** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  store %struct.TYPE_11__* %44, %struct.TYPE_11__** %46, align 8
  br label %53

47:                                               ; preds = %34
  %48 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %49 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %48, i32 0, i32 0
  %50 = load %struct.TYPE_11__*, %struct.TYPE_11__** %49, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %52 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %51, i32 0, i32 0
  store %struct.TYPE_11__* %50, %struct.TYPE_11__** %52, align 8
  br label %53

53:                                               ; preds = %47, %41
  %54 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 2
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = icmp eq %struct.TYPE_11__* %54, %57
  br i1 %58, label %59, label %69

59:                                               ; preds = %53
  %60 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %61 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %60, i32 0, i32 0
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %61, align 8
  %63 = icmp eq %struct.TYPE_11__* %62, null
  %64 = zext i1 %63 to i32
  %65 = call i32 @ASSERT(i32 %64)
  %66 = load %struct.TYPE_11__*, %struct.TYPE_11__** %4, align 8
  %67 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %68 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %67, i32 0, i32 2
  store %struct.TYPE_11__* %66, %struct.TYPE_11__** %68, align 8
  br label %69

69:                                               ; preds = %59, %53
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 5
  %72 = load %struct.TYPE_8__*, %struct.TYPE_8__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = add nsw i32 %74, -1
  store i32 %75, i32* %73, align 8
  %76 = call i32 (...) @dtrace_sync()
  %77 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %78 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %77, i32 0, i32 1
  %79 = load %struct.TYPE_11__*, %struct.TYPE_11__** %78, align 8
  %80 = icmp eq %struct.TYPE_11__* %79, null
  br i1 %80, label %81, label %115

81:                                               ; preds = %69
  %82 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %83 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %82, i32 0, i32 5
  %84 = load %struct.TYPE_8__*, %struct.TYPE_8__** %83, align 8
  store %struct.TYPE_8__* %84, %struct.TYPE_8__** %6, align 8
  %85 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %86 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %85, i32 0, i32 0
  %87 = load %struct.TYPE_11__*, %struct.TYPE_11__** %86, align 8
  %88 = icmp eq %struct.TYPE_11__* %87, null
  %89 = zext i1 %88 to i32
  %90 = call i32 @ASSERT(i32 %89)
  %91 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %91, i32 0, i32 2
  %93 = load %struct.TYPE_11__*, %struct.TYPE_11__** %92, align 8
  %94 = icmp eq %struct.TYPE_11__* %93, null
  %95 = zext i1 %94 to i32
  %96 = call i32 @ASSERT(i32 %95)
  %97 = load i64, i64* @DTRACE_CACHEIDNONE, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i64 %97, i64* %99, align 8
  %100 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %101 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %100, i32 0, i32 1
  %102 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %101, i32 0, i32 0
  %103 = load i32 (i32, i32, i32)*, i32 (i32, i32, i32)** %102, align 8
  %104 = load %struct.TYPE_8__*, %struct.TYPE_8__** %6, align 8
  %105 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 8
  %107 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %108 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %107, i32 0, i32 4
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %110, i32 0, i32 3
  %112 = load i32, i32* %111, align 8
  %113 = call i32 %103(i32 %106, i32 %109, i32 %112)
  %114 = call i32 (...) @dtrace_sync()
  br label %162

115:                                              ; preds = %69
  %116 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %117 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %116, i32 0, i32 2
  %118 = load %struct.TYPE_11__*, %struct.TYPE_11__** %117, align 8
  %119 = icmp ne %struct.TYPE_11__* %118, null
  %120 = zext i1 %119 to i32
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %123 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %122, i32 0, i32 0
  %124 = load i64, i64* %123, align 8
  %125 = load i64, i64* @DTRACE_CACHEIDNONE, align 8
  %126 = icmp eq i64 %124, %125
  %127 = zext i1 %126 to i32
  %128 = call i32 @ASSERT(i32 %127)
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 1
  %131 = load %struct.TYPE_11__*, %struct.TYPE_11__** %130, align 8
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 2
  %134 = load %struct.TYPE_11__*, %struct.TYPE_11__** %133, align 8
  %135 = icmp eq %struct.TYPE_11__* %131, %134
  br i1 %135, label %136, label %159

136:                                              ; preds = %115
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  %139 = load %struct.TYPE_11__*, %struct.TYPE_11__** %138, align 8
  %140 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %139, i32 0, i32 1
  %141 = load %struct.TYPE_10__*, %struct.TYPE_10__** %140, align 8
  store %struct.TYPE_10__* %141, %struct.TYPE_10__** %7, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load %struct.TYPE_11__*, %struct.TYPE_11__** %143, align 8
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load %struct.TYPE_11__*, %struct.TYPE_11__** %145, align 8
  %147 = icmp eq %struct.TYPE_11__* %146, null
  %148 = zext i1 %147 to i32
  %149 = call i32 @ASSERT(i32 %148)
  %150 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %151 = icmp ne %struct.TYPE_10__* %150, null
  br i1 %151, label %152, label %158

152:                                              ; preds = %136
  %153 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %154 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %153, i32 0, i32 0
  %155 = load i64, i64* %154, align 8
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %156, i32 0, i32 0
  store i64 %155, i64* %157, align 8
  br label %158

158:                                              ; preds = %152, %136
  br label %159

159:                                              ; preds = %158, %115
  %160 = load %struct.TYPE_11__*, %struct.TYPE_11__** %2, align 8
  %161 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %160, i32 0, i32 0
  store %struct.TYPE_11__* null, %struct.TYPE_11__** %161, align 8
  br label %162

162:                                              ; preds = %15, %159, %81
  ret void
}

declare dso_local i32 @LCK_MTX_ASSERT(i32*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @dtrace_sync(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
