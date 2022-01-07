; ModuleID = '/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_create_announce_packet.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/mdns/extr_mdns.c__mdns_create_announce_packet.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32* }

@MDNS_FLAGS_AUTHORITATIVE = common dso_local global i32 0, align 4
@MDNS_TYPE_SDPTR = common dso_local global i32 0, align 4
@MDNS_TYPE_PTR = common dso_local global i32 0, align 4
@MDNS_TYPE_SRV = common dso_local global i32 0, align 4
@MDNS_TYPE_TXT = common dso_local global i32 0, align 4
@MDNS_TYPE_A = common dso_local global i32 0, align 4
@MDNS_TYPE_AAAA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32, i32, %struct.TYPE_8__**, i64, i32)* @_mdns_create_announce_packet to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @_mdns_create_announce_packet(i32 %0, i32 %1, %struct.TYPE_8__** %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.TYPE_8__**, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.TYPE_7__*, align 8
  %13 = alloca i64, align 8
  store i32 %0, i32* %7, align 4
  store i32 %1, i32* %8, align 4
  store %struct.TYPE_8__** %2, %struct.TYPE_8__*** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = call %struct.TYPE_7__* @_mdns_alloc_packet_default(i32 %14, i32 %15)
  store %struct.TYPE_7__* %16, %struct.TYPE_7__** %12, align 8
  %17 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %18 = icmp ne %struct.TYPE_7__* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %5
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %104

20:                                               ; preds = %5
  %21 = load i32, i32* @MDNS_FLAGS_AUTHORITATIVE, align 4
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  store i64 0, i64* %13, align 8
  br label %24

24:                                               ; preds = %80, %20
  %25 = load i64, i64* %13, align 8
  %26 = load i64, i64* %10, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %83

28:                                               ; preds = %24
  %29 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %30 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %29, i32 0, i32 0
  %31 = load i32, i32* @MDNS_TYPE_SDPTR, align 4
  %32 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %33 = load i64, i64* %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %32, i64 %33
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = call i32 @_mdns_alloc_answer(i32* %30, i32 %31, i32* %37, i32 0, i32 0)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %76

40:                                               ; preds = %28
  %41 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  %43 = load i32, i32* @MDNS_TYPE_PTR, align 4
  %44 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %45 = load i64, i64* %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %44, i64 %45
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 0
  %49 = load i32*, i32** %48, align 8
  %50 = call i32 @_mdns_alloc_answer(i32* %42, i32 %43, i32* %49, i32 0, i32 0)
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %52, label %76

52:                                               ; preds = %40
  %53 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %54 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %53, i32 0, i32 0
  %55 = load i32, i32* @MDNS_TYPE_SRV, align 4
  %56 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %57 = load i64, i64* %13, align 8
  %58 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %56, i64 %57
  %59 = load %struct.TYPE_8__*, %struct.TYPE_8__** %58, align 8
  %60 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @_mdns_alloc_answer(i32* %54, i32 %55, i32* %61, i32 1, i32 0)
  %63 = icmp ne i32 %62, 0
  br i1 %63, label %64, label %76

64:                                               ; preds = %52
  %65 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %66 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %65, i32 0, i32 0
  %67 = load i32, i32* @MDNS_TYPE_TXT, align 4
  %68 = load %struct.TYPE_8__**, %struct.TYPE_8__*** %9, align 8
  %69 = load i64, i64* %13, align 8
  %70 = getelementptr inbounds %struct.TYPE_8__*, %struct.TYPE_8__** %68, i64 %69
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 0
  %73 = load i32*, i32** %72, align 8
  %74 = call i32 @_mdns_alloc_answer(i32* %66, i32 %67, i32* %73, i32 1, i32 0)
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %64, %52, %40, %28
  %77 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %78 = call i32 @_mdns_free_tx_packet(%struct.TYPE_7__* %77)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %104

79:                                               ; preds = %64
  br label %80

80:                                               ; preds = %79
  %81 = load i64, i64* %13, align 8
  %82 = add i64 %81, 1
  store i64 %82, i64* %13, align 8
  br label %24

83:                                               ; preds = %24
  %84 = load i32, i32* %11, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %102

86:                                               ; preds = %83
  %87 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %88 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %87, i32 0, i32 0
  %89 = load i32, i32* @MDNS_TYPE_A, align 4
  %90 = call i32 @_mdns_alloc_answer(i32* %88, i32 %89, i32* null, i32 1, i32 0)
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %92, label %98

92:                                               ; preds = %86
  %93 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %94 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %93, i32 0, i32 0
  %95 = load i32, i32* @MDNS_TYPE_AAAA, align 4
  %96 = call i32 @_mdns_alloc_answer(i32* %94, i32 %95, i32* null, i32 1, i32 0)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %101, label %98

98:                                               ; preds = %92, %86
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  %100 = call i32 @_mdns_free_tx_packet(%struct.TYPE_7__* %99)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  br label %104

101:                                              ; preds = %92
  br label %102

102:                                              ; preds = %101, %83
  %103 = load %struct.TYPE_7__*, %struct.TYPE_7__** %12, align 8
  store %struct.TYPE_7__* %103, %struct.TYPE_7__** %6, align 8
  br label %104

104:                                              ; preds = %102, %98, %76, %19
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  ret %struct.TYPE_7__* %105
}

declare dso_local %struct.TYPE_7__* @_mdns_alloc_packet_default(i32, i32) #1

declare dso_local i32 @_mdns_alloc_answer(i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @_mdns_free_tx_packet(%struct.TYPE_7__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
