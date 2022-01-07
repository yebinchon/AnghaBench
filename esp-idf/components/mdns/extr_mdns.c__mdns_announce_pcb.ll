; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_announce_pcb.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_announce_pcb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_18__ = type { i32, %struct.TYPE_14__* }
%struct.TYPE_14__ = type { %struct.TYPE_17__* }
%struct.TYPE_17__ = type { i64, i64 }
%struct.TYPE_16__ = type { i32* }
%struct.TYPE_15__ = type { i32, i32 }

@_mdns_server = common dso_local global %struct.TYPE_18__* null, align 8
@MDNS_TYPE_SDPTR = common dso_local global i32 0, align 4
@MDNS_TYPE_PTR = common dso_local global i32 0, align 4
@MDNS_TYPE_SRV = common dso_local global i32 0, align 4
@MDNS_TYPE_TXT = common dso_local global i32 0, align 4
@MDNS_TYPE_A = common dso_local global i32 0, align 4
@MDNS_TYPE_AAAA = common dso_local global i32 0, align 4
@PCB_ANNOUNCE_1 = common dso_local global i8* null, align 8
@PCB_RUNNING = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, %struct.TYPE_16__**, i64, i32)* @_mdns_announce_pcb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_announce_pcb(i64 %0, i64 %1, %struct.TYPE_16__** %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_16__**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_17__*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_15__*, align 8
  %14 = alloca %struct.TYPE_15__*, align 8
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.TYPE_16__** %2, %struct.TYPE_16__*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %15 = load %struct.TYPE_18__*, %struct.TYPE_18__** @_mdns_server, align 8
  %16 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %15, i32 0, i32 1
  %17 = load %struct.TYPE_14__*, %struct.TYPE_14__** %16, align 8
  %18 = load i64, i64* %6, align 8
  %19 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %17, i64 %18
  %20 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %19, i32 0, i32 0
  %21 = load %struct.TYPE_17__*, %struct.TYPE_17__** %20, align 8
  %22 = load i64, i64* %7, align 8
  %23 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %21, i64 %22
  store %struct.TYPE_17__* %23, %struct.TYPE_17__** %11, align 8
  %24 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %25 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %166

28:                                               ; preds = %5
  %29 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %30 = call i64 @PCB_STATE_IS_PROBING(%struct.TYPE_17__* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %28
  %33 = load i64, i64* %6, align 8
  %34 = load i64, i64* %7, align 8
  %35 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %36 = load i64, i64* %9, align 8
  %37 = load i32, i32* %10, align 4
  %38 = call i32 @_mdns_init_pcb_probe(i64 %33, i64 %34, %struct.TYPE_16__** %35, i64 %36, i32 %37)
  br label %165

39:                                               ; preds = %28
  %40 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %41 = call i64 @PCB_STATE_IS_ANNOUNCING(%struct.TYPE_17__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %133

43:                                               ; preds = %39
  %44 = load i64, i64* %6, align 8
  %45 = load i64, i64* %7, align 8
  %46 = call %struct.TYPE_15__* @_mdns_get_next_pcb_packet(i64 %44, i64 %45)
  store %struct.TYPE_15__* %46, %struct.TYPE_15__** %13, align 8
  %47 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %48 = icmp ne %struct.TYPE_15__* %47, null
  br i1 %48, label %49, label %132

49:                                               ; preds = %43
  store i64 0, i64* %12, align 8
  br label %50

50:                                               ; preds = %104, %49
  %51 = load i64, i64* %12, align 8
  %52 = load i64, i64* %9, align 8
  %53 = icmp ult i64 %51, %52
  br i1 %53, label %54, label %107

54:                                               ; preds = %50
  %55 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %55, i32 0, i32 0
  %57 = load i32, i32* @MDNS_TYPE_SDPTR, align 4
  %58 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %59 = load i64, i64* %12, align 8
  %60 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %58, i64 %59
  %61 = load %struct.TYPE_16__*, %struct.TYPE_16__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = call i32 @_mdns_alloc_answer(i32* %56, i32 %57, i32* %63, i32 0, i32 0)
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %102

66:                                               ; preds = %54
  %67 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %68 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %67, i32 0, i32 0
  %69 = load i32, i32* @MDNS_TYPE_PTR, align 4
  %70 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %71 = load i64, i64* %12, align 8
  %72 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %70, i64 %71
  %73 = load %struct.TYPE_16__*, %struct.TYPE_16__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %73, i32 0, i32 0
  %75 = load i32*, i32** %74, align 8
  %76 = call i32 @_mdns_alloc_answer(i32* %68, i32 %69, i32* %75, i32 0, i32 0)
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %66
  %79 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %80 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %79, i32 0, i32 0
  %81 = load i32, i32* @MDNS_TYPE_SRV, align 4
  %82 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %83 = load i64, i64* %12, align 8
  %84 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %82, i64 %83
  %85 = load %struct.TYPE_16__*, %struct.TYPE_16__** %84, align 8
  %86 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = call i32 @_mdns_alloc_answer(i32* %80, i32 %81, i32* %87, i32 1, i32 0)
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %90, label %102

90:                                               ; preds = %78
  %91 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %92 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %91, i32 0, i32 0
  %93 = load i32, i32* @MDNS_TYPE_TXT, align 4
  %94 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %95 = load i64, i64* %12, align 8
  %96 = getelementptr inbounds %struct.TYPE_16__*, %struct.TYPE_16__** %94, i64 %95
  %97 = load %struct.TYPE_16__*, %struct.TYPE_16__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %97, i32 0, i32 0
  %99 = load i32*, i32** %98, align 8
  %100 = call i32 @_mdns_alloc_answer(i32* %92, i32 %93, i32* %99, i32 1, i32 0)
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %103, label %102

102:                                              ; preds = %90, %78, %66, %54
  br label %107

103:                                              ; preds = %90
  br label %104

104:                                              ; preds = %103
  %105 = load i64, i64* %12, align 8
  %106 = add i64 %105, 1
  store i64 %106, i64* %12, align 8
  br label %50

107:                                              ; preds = %102, %50
  %108 = load i32, i32* %10, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %127

110:                                              ; preds = %107
  %111 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %112 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %111, i32 0, i32 1
  %113 = load i32, i32* @MDNS_TYPE_A, align 4
  %114 = call i32 @_mdns_dealloc_answer(i32* %112, i32 %113, i32* null)
  %115 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %116 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %115, i32 0, i32 1
  %117 = load i32, i32* @MDNS_TYPE_AAAA, align 4
  %118 = call i32 @_mdns_dealloc_answer(i32* %116, i32 %117, i32* null)
  %119 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %120 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %119, i32 0, i32 0
  %121 = load i32, i32* @MDNS_TYPE_A, align 4
  %122 = call i32 @_mdns_alloc_answer(i32* %120, i32 %121, i32* null, i32 1, i32 0)
  %123 = load %struct.TYPE_15__*, %struct.TYPE_15__** %13, align 8
  %124 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %123, i32 0, i32 0
  %125 = load i32, i32* @MDNS_TYPE_AAAA, align 4
  %126 = call i32 @_mdns_alloc_answer(i32* %124, i32 %125, i32* null, i32 1, i32 0)
  br label %127

127:                                              ; preds = %110, %107
  %128 = load i8*, i8** @PCB_ANNOUNCE_1, align 8
  %129 = ptrtoint i8* %128 to i64
  %130 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %131 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %130, i32 0, i32 0
  store i64 %129, i64* %131, align 8
  br label %132

132:                                              ; preds = %127, %43
  br label %164

133:                                              ; preds = %39
  %134 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %135 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %134, i32 0, i32 0
  %136 = load i64, i64* %135, align 8
  %137 = load i64, i64* @PCB_RUNNING, align 8
  %138 = icmp eq i64 %136, %137
  br i1 %138, label %139, label %163

139:                                              ; preds = %133
  %140 = load %struct.TYPE_18__*, %struct.TYPE_18__** @_mdns_server, align 8
  %141 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %140, i32 0, i32 0
  %142 = load i32, i32* %141, align 8
  %143 = call i64 @_str_null_or_empty(i32 %142)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %146

145:                                              ; preds = %139
  br label %166

146:                                              ; preds = %139
  %147 = load i8*, i8** @PCB_ANNOUNCE_1, align 8
  %148 = ptrtoint i8* %147 to i64
  %149 = load %struct.TYPE_17__*, %struct.TYPE_17__** %11, align 8
  %150 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %149, i32 0, i32 0
  store i64 %148, i64* %150, align 8
  %151 = load i64, i64* %6, align 8
  %152 = load i64, i64* %7, align 8
  %153 = load %struct.TYPE_16__**, %struct.TYPE_16__*** %8, align 8
  %154 = load i64, i64* %9, align 8
  %155 = load i32, i32* %10, align 4
  %156 = call %struct.TYPE_15__* @_mdns_create_announce_packet(i64 %151, i64 %152, %struct.TYPE_16__** %153, i64 %154, i32 %155)
  store %struct.TYPE_15__* %156, %struct.TYPE_15__** %14, align 8
  %157 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %158 = icmp ne %struct.TYPE_15__* %157, null
  br i1 %158, label %159, label %162

159:                                              ; preds = %146
  %160 = load %struct.TYPE_15__*, %struct.TYPE_15__** %14, align 8
  %161 = call i32 @_mdns_schedule_tx_packet(%struct.TYPE_15__* %160, i32 0)
  br label %162

162:                                              ; preds = %159, %146
  br label %163

163:                                              ; preds = %162, %133
  br label %164

164:                                              ; preds = %163, %132
  br label %165

165:                                              ; preds = %164, %32
  br label %166

166:                                              ; preds = %145, %165, %5
  ret void
}

declare dso_local i64 @PCB_STATE_IS_PROBING(%struct.TYPE_17__*) #1

declare dso_local i32 @_mdns_init_pcb_probe(i64, i64, %struct.TYPE_16__**, i64, i32) #1

declare dso_local i64 @PCB_STATE_IS_ANNOUNCING(%struct.TYPE_17__*) #1

declare dso_local %struct.TYPE_15__* @_mdns_get_next_pcb_packet(i64, i64) #1

declare dso_local i32 @_mdns_alloc_answer(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @_mdns_dealloc_answer(i32*, i32, i32*) #1

declare dso_local i64 @_str_null_or_empty(i32) #1

declare dso_local %struct.TYPE_15__* @_mdns_create_announce_packet(i64, i64, %struct.TYPE_16__**, i64, i32) #1

declare dso_local i32 @_mdns_schedule_tx_packet(%struct.TYPE_15__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
