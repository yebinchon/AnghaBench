; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_protocol.c_proto_input.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_protocol.c_proto_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_input_entry = type { i64, %struct.TYPE_2__*, i32 (i64, i32*)*, i64, %struct.proto_input_entry* }
%struct.TYPE_2__ = type { i32, i32 }

@proto_hash = common dso_local global %struct.proto_input_entry** null, align 8
@DOM_REENTRANT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_input(i64 %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.proto_input_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  store i64 %0, i64* %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %10 = load %struct.proto_input_entry**, %struct.proto_input_entry*** @proto_hash, align 8
  %11 = load i64, i64* %4, align 8
  %12 = call i64 @proto_hash_value(i64 %11)
  %13 = getelementptr inbounds %struct.proto_input_entry*, %struct.proto_input_entry** %10, i64 %12
  %14 = load %struct.proto_input_entry*, %struct.proto_input_entry** %13, align 8
  store %struct.proto_input_entry* %14, %struct.proto_input_entry** %6, align 8
  br label %15

15:                                               ; preds = %26, %2
  %16 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %17 = icmp ne %struct.proto_input_entry* %16, null
  br i1 %17, label %18, label %30

18:                                               ; preds = %15
  %19 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %20 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* %4, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %30

25:                                               ; preds = %18
  br label %26

26:                                               ; preds = %25
  %27 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %28 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %27, i32 0, i32 4
  %29 = load %struct.proto_input_entry*, %struct.proto_input_entry** %28, align 8
  store %struct.proto_input_entry* %29, %struct.proto_input_entry** %6, align 8
  br label %15

30:                                               ; preds = %24, %15
  %31 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %32 = icmp eq %struct.proto_input_entry* %31, null
  br i1 %32, label %33, label %34

33:                                               ; preds = %30
  store i32 -1, i32* %3, align 4
  br label %102

34:                                               ; preds = %30
  %35 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %36 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %35, i32 0, i32 1
  %37 = load %struct.TYPE_2__*, %struct.TYPE_2__** %36, align 8
  %38 = icmp ne %struct.TYPE_2__* %37, null
  br i1 %38, label %39, label %55

39:                                               ; preds = %34
  %40 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %41 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %40, i32 0, i32 1
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @DOM_REENTRANT, align 4
  %46 = and i32 %44, %45
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %55, label %48

48:                                               ; preds = %39
  %49 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %50 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %49, i32 0, i32 1
  %51 = load %struct.TYPE_2__*, %struct.TYPE_2__** %50, align 8
  %52 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @lck_mtx_lock(i32 %53)
  store i32 1, i32* %7, align 4
  br label %55

55:                                               ; preds = %48, %39, %34
  %56 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %57 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %56, i32 0, i32 3
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %62 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %61, i32 0, i32 2
  %63 = load i32 (i64, i32*)*, i32 (i64, i32*)** %62, align 8
  %64 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %65 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = load i32*, i32** %5, align 8
  %68 = call i32 %63(i64 %66, i32* %67)
  br label %90

69:                                               ; preds = %55
  %70 = load i32*, i32** %5, align 8
  store i32* %70, i32** %9, align 8
  br label %71

71:                                               ; preds = %87, %69
  %72 = load i32*, i32** %9, align 8
  %73 = icmp ne i32* %72, null
  br i1 %73, label %74, label %89

74:                                               ; preds = %71
  %75 = load i32*, i32** %9, align 8
  %76 = call i32* @mbuf_nextpkt(i32* %75)
  store i32* %76, i32** %5, align 8
  %77 = load i32*, i32** %9, align 8
  %78 = call i32 @mbuf_setnextpkt(i32* %77, i32* null)
  %79 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %80 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %79, i32 0, i32 2
  %81 = load i32 (i64, i32*)*, i32 (i64, i32*)** %80, align 8
  %82 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %83 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32*, i32** %9, align 8
  %86 = call i32 %81(i64 %84, i32* %85)
  br label %87

87:                                               ; preds = %74
  %88 = load i32*, i32** %5, align 8
  store i32* %88, i32** %9, align 8
  br label %71

89:                                               ; preds = %71
  br label %90

90:                                               ; preds = %89, %60
  %91 = load i32, i32* %7, align 4
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %100

93:                                               ; preds = %90
  %94 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %95 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %94, i32 0, i32 1
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @lck_mtx_unlock(i32 %98)
  br label %100

100:                                              ; preds = %93, %90
  %101 = load i32, i32* %8, align 4
  store i32 %101, i32* %3, align 4
  br label %102

102:                                              ; preds = %100, %33
  %103 = load i32, i32* %3, align 4
  ret i32 %103
}

declare dso_local i64 @proto_hash_value(i64) #1

declare dso_local i32 @lck_mtx_lock(i32) #1

declare dso_local i32* @mbuf_nextpkt(i32*) #1

declare dso_local i32 @mbuf_setnextpkt(i32*, i32*) #1

declare dso_local i32 @lck_mtx_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
