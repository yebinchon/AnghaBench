; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_init_pcb_probe_new_service.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_init_pcb_probe_new_service.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64, i32, i32, i32, i32, i32** }

@_mdns_server = common dso_local global %struct.TYPE_7__* null, align 8
@HOOK_MALLOC_FAILED = common dso_local global i32 0, align 4
@PCB_PROBE_1 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32**, i64, i32)* @_mdns_init_pcb_probe_new_service to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_init_pcb_probe_new_service(i64 %0, i64 %1, i32** %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32**, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_mdns_server, align 8
  %17 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** %17, align 8
  %19 = load i64, i64* %6, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = load i64, i64* %7, align 8
  %24 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i64 %23
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %11, align 8
  %25 = load i64, i64* %9, align 8
  store i64 %25, i64* %12, align 8
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %27 = call i64 @PCB_STATE_IS_PROBING(%struct.TYPE_6__* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %5
  %30 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %31 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* %12, align 8
  %34 = add i64 %33, %32
  store i64 %34, i64* %12, align 8
  br label %35

35:                                               ; preds = %29, %5
  store i32** null, i32*** %13, align 8
  %36 = load i64, i64* %12, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %97

38:                                               ; preds = %35
  %39 = load i64, i64* %12, align 8
  %40 = mul i64 8, %39
  %41 = trunc i64 %40 to i32
  %42 = call i64 @malloc(i32 %41)
  %43 = inttoptr i64 %42 to i32**
  store i32** %43, i32*** %13, align 8
  %44 = load i32**, i32*** %13, align 8
  %45 = icmp ne i32** %44, null
  br i1 %45, label %48, label %46

46:                                               ; preds = %38
  %47 = load i32, i32* @HOOK_MALLOC_FAILED, align 4
  br label %153

48:                                               ; preds = %38
  store i64 0, i64* %14, align 8
  br label %49

49:                                               ; preds = %61, %48
  %50 = load i64, i64* %14, align 8
  %51 = load i64, i64* %9, align 8
  %52 = icmp ult i64 %50, %51
  br i1 %52, label %53, label %64

53:                                               ; preds = %49
  %54 = load i32**, i32*** %8, align 8
  %55 = load i64, i64* %14, align 8
  %56 = getelementptr inbounds i32*, i32** %54, i64 %55
  %57 = load i32*, i32** %56, align 8
  %58 = load i32**, i32*** %13, align 8
  %59 = load i64, i64* %14, align 8
  %60 = getelementptr inbounds i32*, i32** %58, i64 %59
  store i32* %57, i32** %60, align 8
  br label %61

61:                                               ; preds = %53
  %62 = load i64, i64* %14, align 8
  %63 = add i64 %62, 1
  store i64 %63, i64* %14, align 8
  br label %49

64:                                               ; preds = %49
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 5
  %67 = load i32**, i32*** %66, align 8
  %68 = icmp ne i32** %67, null
  br i1 %68, label %69, label %96

69:                                               ; preds = %64
  store i64 0, i64* %14, align 8
  br label %70

70:                                               ; preds = %88, %69
  %71 = load i64, i64* %14, align 8
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i64, i64* %73, align 8
  %75 = icmp ult i64 %71, %74
  br i1 %75, label %76, label %91

76:                                               ; preds = %70
  %77 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %78 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %77, i32 0, i32 5
  %79 = load i32**, i32*** %78, align 8
  %80 = load i64, i64* %14, align 8
  %81 = getelementptr inbounds i32*, i32** %79, i64 %80
  %82 = load i32*, i32** %81, align 8
  %83 = load i32**, i32*** %13, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %14, align 8
  %86 = add i64 %84, %85
  %87 = getelementptr inbounds i32*, i32** %83, i64 %86
  store i32* %82, i32** %87, align 8
  br label %88

88:                                               ; preds = %76
  %89 = load i64, i64* %14, align 8
  %90 = add i64 %89, 1
  store i64 %90, i64* %14, align 8
  br label %70

91:                                               ; preds = %70
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 5
  %94 = load i32**, i32*** %93, align 8
  %95 = call i32 @free(i32** %94)
  br label %96

96:                                               ; preds = %91, %64
  br label %97

97:                                               ; preds = %96, %35
  %98 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %99 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %105, label %102

102:                                              ; preds = %97
  %103 = load i32, i32* %10, align 4
  %104 = icmp ne i32 %103, 0
  br label %105

105:                                              ; preds = %102, %97
  %106 = phi i1 [ true, %97 ], [ %104, %102 ]
  %107 = zext i1 %106 to i32
  store i32 %107, i32* %10, align 4
  %108 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %109 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %108, i32 0, i32 1
  store i32 0, i32* %109, align 8
  %110 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %110, i32 0, i32 5
  store i32** null, i32*** %111, align 8
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store i64 0, i64* %113, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %115 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i32 0, i32 2
  store i32 0, i32* %115, align 4
  %116 = load i64, i64* %6, align 8
  %117 = load i64, i64* %7, align 8
  %118 = load i32**, i32*** %13, align 8
  %119 = load i64, i64* %12, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32* @_mdns_create_probe_packet(i64 %116, i64 %117, i32** %118, i64 %119, i32 1, i32 %120)
  store i32* %121, i32** %15, align 8
  %122 = load i32*, i32** %15, align 8
  %123 = icmp ne i32* %122, null
  br i1 %123, label %127, label %124

124:                                              ; preds = %105
  %125 = load i32**, i32*** %13, align 8
  %126 = call i32 @free(i32** %125)
  br label %153

127:                                              ; preds = %105
  %128 = load i32, i32* %10, align 4
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 1
  store i32 %128, i32* %130, align 8
  %131 = load i32**, i32*** %13, align 8
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %133 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %132, i32 0, i32 5
  store i32** %131, i32*** %133, align 8
  %134 = load i64, i64* %12, align 8
  %135 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %136 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %135, i32 0, i32 0
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %138 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %137, i32 0, i32 2
  store i32 1, i32* %138, align 4
  %139 = load i32*, i32** %15, align 8
  %140 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %141 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 8
  %143 = icmp sgt i32 %142, 5
  %144 = zext i1 %143 to i64
  %145 = select i1 %143, i32 1000, i32 120
  %146 = call i32 (...) @esp_random()
  %147 = and i32 %146, 127
  %148 = add nsw i32 %145, %147
  %149 = call i32 @_mdns_schedule_tx_packet(i32* %139, i32 %148)
  %150 = load i32, i32* @PCB_PROBE_1, align 4
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 4
  store i32 %150, i32* %152, align 4
  br label %153

153:                                              ; preds = %127, %124, %46
  ret void
}

declare dso_local i64 @PCB_STATE_IS_PROBING(%struct.TYPE_6__*) #1

declare dso_local i64 @malloc(i32) #1

declare dso_local i32 @free(i32**) #1

declare dso_local i32* @_mdns_create_probe_packet(i64, i64, i32**, i64, i32, i32) #1

declare dso_local i32 @_mdns_schedule_tx_packet(i32*, i32) #1

declare dso_local i32 @esp_random(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
