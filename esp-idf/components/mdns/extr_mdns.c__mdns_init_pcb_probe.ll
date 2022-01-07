; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_init_pcb_probe.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_init_pcb_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32, i32**, i32 }

@_mdns_server = common dso_local global %struct.TYPE_7__* null, align 8
@PCB_RUNNING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i64, i64, i32**, i64, i32)* @_mdns_init_pcb_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @_mdns_init_pcb_probe(i64 %0, i64 %1, i32** %2, i64 %3, i32 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32**, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.TYPE_6__*, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i64 %1, i64* %7, align 8
  store i32** %2, i32*** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  %18 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_mdns_server, align 8
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_5__*, %struct.TYPE_5__** %19, align 8
  %21 = load i64, i64* %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %20, i64 %21
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = load i64, i64* %7, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i64 %25
  store %struct.TYPE_6__* %26, %struct.TYPE_6__** %11, align 8
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = call i32 @_mdns_clear_pcb_tx_queue_head(i64 %27, i64 %28)
  %30 = load %struct.TYPE_7__*, %struct.TYPE_7__** @_mdns_server, align 8
  %31 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = call i64 @_str_null_or_empty(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %5
  %36 = load i32, i32* @PCB_RUNNING, align 4
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %37, i32 0, i32 2
  store i32 %36, i32* %38, align 8
  br label %116

39:                                               ; preds = %5
  %40 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %41 = call i64 @PCB_STATE_IS_PROBING(%struct.TYPE_6__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %109

43:                                               ; preds = %39
  %44 = load i64, i64* %9, align 8
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %12, align 8
  %46 = alloca i32*, i64 %44, align 16
  store i64 %44, i64* %13, align 8
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %47

47:                                               ; preds = %92, %43
  %48 = load i32, i32* %16, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* %9, align 8
  %51 = icmp ult i64 %49, %50
  br i1 %51, label %52, label %95

52:                                               ; preds = %47
  store i32 0, i32* %15, align 4
  store i32 0, i32* %17, align 4
  br label %53

53:                                               ; preds = %75, %52
  %54 = load i32, i32* %17, align 4
  %55 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = icmp slt i32 %54, %57
  br i1 %58, label %59, label %78

59:                                               ; preds = %53
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %11, align 8
  %61 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i32 0, i32 1
  %62 = load i32**, i32*** %61, align 8
  %63 = load i32, i32* %17, align 4
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32*, i32** %62, i64 %64
  %66 = load i32*, i32** %65, align 8
  %67 = load i32**, i32*** %8, align 8
  %68 = load i32, i32* %16, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds i32*, i32** %67, i64 %69
  %71 = load i32*, i32** %70, align 8
  %72 = icmp eq i32* %66, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %59
  store i32 1, i32* %15, align 4
  br label %78

74:                                               ; preds = %59
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %17, align 4
  %77 = add nsw i32 %76, 1
  store i32 %77, i32* %17, align 4
  br label %53

78:                                               ; preds = %73, %53
  %79 = load i32, i32* %15, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %91, label %81

81:                                               ; preds = %78
  %82 = load i32**, i32*** %8, align 8
  %83 = load i32, i32* %16, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds i32*, i32** %82, i64 %84
  %86 = load i32*, i32** %85, align 8
  %87 = load i32, i32* %14, align 4
  %88 = add nsw i32 %87, 1
  store i32 %88, i32* %14, align 4
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32*, i32** %46, i64 %89
  store i32* %86, i32** %90, align 8
  br label %91

91:                                               ; preds = %81, %78
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %16, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %16, align 4
  br label %47

95:                                               ; preds = %47
  %96 = load i64, i64* %6, align 8
  %97 = load i64, i64* %7, align 8
  %98 = load i32, i32* %14, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %95
  br label %102

101:                                              ; preds = %95
  br label %102

102:                                              ; preds = %101, %100
  %103 = phi i32** [ %46, %100 ], [ null, %101 ]
  %104 = load i32, i32* %14, align 4
  %105 = sext i32 %104 to i64
  %106 = load i32, i32* %10, align 4
  %107 = call i32 @_mdns_init_pcb_probe_new_service(i64 %96, i64 %97, i32** %103, i64 %105, i32 %106)
  %108 = load i8*, i8** %12, align 8
  call void @llvm.stackrestore(i8* %108)
  br label %116

109:                                              ; preds = %39
  %110 = load i64, i64* %6, align 8
  %111 = load i64, i64* %7, align 8
  %112 = load i32**, i32*** %8, align 8
  %113 = load i64, i64* %9, align 8
  %114 = load i32, i32* %10, align 4
  %115 = call i32 @_mdns_init_pcb_probe_new_service(i64 %110, i64 %111, i32** %112, i64 %113, i32 %114)
  br label %116

116:                                              ; preds = %35, %109, %102
  ret void
}

declare dso_local i32 @_mdns_clear_pcb_tx_queue_head(i64, i64) #1

declare dso_local i64 @_str_null_or_empty(i32) #1

declare dso_local i64 @PCB_STATE_IS_PROBING(%struct.TYPE_6__*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @_mdns_init_pcb_probe_new_service(i64, i64, i32**, i64, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
