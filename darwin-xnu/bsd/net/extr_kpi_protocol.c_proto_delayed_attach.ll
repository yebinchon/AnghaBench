; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_protocol.c_proto_delayed_attach.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_protocol.c_proto_delayed_attach.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.proto_input_entry = type { i64, %struct.proto_input_entry*, i32 (i64)* }

@proto_hash = common dso_local global %struct.proto_input_entry** null, align 8
@M_IFADDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.proto_input_entry*)* @proto_delayed_attach to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @proto_delayed_attach(%struct.proto_input_entry* %0) #0 {
  %2 = alloca %struct.proto_input_entry*, align 8
  %3 = alloca %struct.proto_input_entry*, align 8
  %4 = alloca %struct.proto_input_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.proto_input_entry* %0, %struct.proto_input_entry** %2, align 8
  %6 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %7 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %6, i32 0, i32 1
  %8 = load %struct.proto_input_entry*, %struct.proto_input_entry** %7, align 8
  store %struct.proto_input_entry* %8, %struct.proto_input_entry** %3, align 8
  br label %9

9:                                                ; preds = %76, %1
  %10 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %11 = icmp ne %struct.proto_input_entry* %10, null
  br i1 %11, label %12, label %78

12:                                               ; preds = %9
  %13 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %14 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = call i32 @proto_hash_value(i64 %15)
  store i32 %16, i32* %5, align 4
  %17 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %18 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %17, i32 0, i32 1
  %19 = load %struct.proto_input_entry*, %struct.proto_input_entry** %18, align 8
  store %struct.proto_input_entry* %19, %struct.proto_input_entry** %3, align 8
  %20 = load %struct.proto_input_entry**, %struct.proto_input_entry*** @proto_hash, align 8
  %21 = load i32, i32* %5, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.proto_input_entry*, %struct.proto_input_entry** %20, i64 %22
  %24 = load %struct.proto_input_entry*, %struct.proto_input_entry** %23, align 8
  store %struct.proto_input_entry* %24, %struct.proto_input_entry** %4, align 8
  br label %25

25:                                               ; preds = %38, %12
  %26 = load %struct.proto_input_entry*, %struct.proto_input_entry** %4, align 8
  %27 = icmp ne %struct.proto_input_entry* %26, null
  br i1 %27, label %28, label %42

28:                                               ; preds = %25
  %29 = load %struct.proto_input_entry*, %struct.proto_input_entry** %4, align 8
  %30 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %33 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = icmp eq i64 %31, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %28
  br label %42

37:                                               ; preds = %28
  br label %38

38:                                               ; preds = %37
  %39 = load %struct.proto_input_entry*, %struct.proto_input_entry** %4, align 8
  %40 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %39, i32 0, i32 1
  %41 = load %struct.proto_input_entry*, %struct.proto_input_entry** %40, align 8
  store %struct.proto_input_entry* %41, %struct.proto_input_entry** %4, align 8
  br label %25

42:                                               ; preds = %36, %25
  %43 = load %struct.proto_input_entry*, %struct.proto_input_entry** %4, align 8
  %44 = icmp ne %struct.proto_input_entry* %43, null
  br i1 %44, label %45, label %62

45:                                               ; preds = %42
  %46 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %47 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %46, i32 0, i32 2
  %48 = load i32 (i64)*, i32 (i64)** %47, align 8
  %49 = icmp ne i32 (i64)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %52 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %51, i32 0, i32 2
  %53 = load i32 (i64)*, i32 (i64)** %52, align 8
  %54 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %55 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = call i32 %53(i64 %56)
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %60 = load i32, i32* @M_IFADDR, align 4
  %61 = call i32 @FREE(%struct.proto_input_entry* %59, i32 %60)
  br label %75

62:                                               ; preds = %42
  %63 = load %struct.proto_input_entry**, %struct.proto_input_entry*** @proto_hash, align 8
  %64 = load i32, i32* %5, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.proto_input_entry*, %struct.proto_input_entry** %63, i64 %65
  %67 = load %struct.proto_input_entry*, %struct.proto_input_entry** %66, align 8
  %68 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %69 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %68, i32 0, i32 1
  store %struct.proto_input_entry* %67, %struct.proto_input_entry** %69, align 8
  %70 = load %struct.proto_input_entry*, %struct.proto_input_entry** %2, align 8
  %71 = load %struct.proto_input_entry**, %struct.proto_input_entry*** @proto_hash, align 8
  %72 = load i32, i32* %5, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.proto_input_entry*, %struct.proto_input_entry** %71, i64 %73
  store %struct.proto_input_entry* %70, %struct.proto_input_entry** %74, align 8
  br label %75

75:                                               ; preds = %62, %58
  br label %76

76:                                               ; preds = %75
  %77 = load %struct.proto_input_entry*, %struct.proto_input_entry** %3, align 8
  store %struct.proto_input_entry* %77, %struct.proto_input_entry** %2, align 8
  br label %9

78:                                               ; preds = %9
  ret void
}

declare dso_local i32 @proto_hash_value(i64) #1

declare dso_local i32 @FREE(%struct.proto_input_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
