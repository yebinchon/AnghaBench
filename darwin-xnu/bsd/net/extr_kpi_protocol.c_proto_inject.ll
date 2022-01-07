; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_protocol.c_proto_inject.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_kpi_protocol.c_proto_inject.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlil_threading_info = type { i32, i32 }
%struct.proto_input_entry = type { i64, i8*, i32*, %struct.proto_input_entry* }

@dlil_main_input_thread = common dso_local global %struct.dlil_threading_info* null, align 8
@proto_hash = common dso_local global %struct.proto_input_entry** null, align 8
@proto_total_waiting = common dso_local global i32 0, align 4
@DLIL_PROTO_WAITING = common dso_local global i32 0, align 4
@DLIL_INPUT_RUNNING = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @proto_inject(i64 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.proto_input_entry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dlil_threading_info*, align 8
  store i64 %0, i64* %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i64, i64* %4, align 8
  %11 = call i32 @proto_hash_value(i64 %10)
  store i32 %11, i32* %8, align 4
  %12 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** @dlil_main_input_thread, align 8
  store %struct.dlil_threading_info* %12, %struct.dlil_threading_info** %9, align 8
  %13 = load i8*, i8** %5, align 8
  store i8* %13, i8** %7, align 8
  br label %14

14:                                               ; preds = %19, %2
  %15 = load i8*, i8** %7, align 8
  %16 = call i32* @mbuf_nextpkt(i8* %15)
  %17 = icmp ne i32* %16, null
  br i1 %17, label %18, label %23

18:                                               ; preds = %14
  br label %19

19:                                               ; preds = %18
  %20 = load i8*, i8** %7, align 8
  %21 = call i32* @mbuf_nextpkt(i8* %20)
  %22 = bitcast i32* %21 to i8*
  store i8* %22, i8** %7, align 8
  br label %14

23:                                               ; preds = %14
  %24 = load %struct.proto_input_entry**, %struct.proto_input_entry*** @proto_hash, align 8
  %25 = load i32, i32* %8, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.proto_input_entry*, %struct.proto_input_entry** %24, i64 %26
  %28 = load %struct.proto_input_entry*, %struct.proto_input_entry** %27, align 8
  store %struct.proto_input_entry* %28, %struct.proto_input_entry** %6, align 8
  br label %29

29:                                               ; preds = %40, %23
  %30 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %31 = icmp ne %struct.proto_input_entry* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %34 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* %4, align 8
  %37 = icmp eq i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %44

39:                                               ; preds = %32
  br label %40

40:                                               ; preds = %39
  %41 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %42 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %41, i32 0, i32 3
  %43 = load %struct.proto_input_entry*, %struct.proto_input_entry** %42, align 8
  store %struct.proto_input_entry* %43, %struct.proto_input_entry** %6, align 8
  br label %29

44:                                               ; preds = %38, %29
  %45 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %46 = icmp ne %struct.proto_input_entry* %45, null
  br i1 %46, label %47, label %92

47:                                               ; preds = %44
  %48 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %9, align 8
  %49 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %48, i32 0, i32 1
  %50 = call i32 @lck_mtx_lock(i32* %49)
  %51 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %52 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %51, i32 0, i32 2
  %53 = load i32*, i32** %52, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %67

55:                                               ; preds = %47
  %56 = load i32, i32* @proto_total_waiting, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* @proto_total_waiting, align 4
  %58 = load i32, i32* @DLIL_PROTO_WAITING, align 4
  %59 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %9, align 8
  %60 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = or i32 %61, %58
  store i32 %62, i32* %60, align 4
  %63 = load i8*, i8** %5, align 8
  %64 = bitcast i8* %63 to i32*
  %65 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %66 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %65, i32 0, i32 2
  store i32* %64, i32** %66, align 8
  br label %73

67:                                               ; preds = %47
  %68 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %69 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %68, i32 0, i32 1
  %70 = load i8*, i8** %69, align 8
  %71 = load i8*, i8** %5, align 8
  %72 = call i32 @mbuf_setnextpkt(i8* %70, i8* %71)
  br label %73

73:                                               ; preds = %67, %55
  %74 = load i8*, i8** %7, align 8
  %75 = load %struct.proto_input_entry*, %struct.proto_input_entry** %6, align 8
  %76 = getelementptr inbounds %struct.proto_input_entry, %struct.proto_input_entry* %75, i32 0, i32 1
  store i8* %74, i8** %76, align 8
  %77 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %9, align 8
  %78 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* @DLIL_INPUT_RUNNING, align 4
  %81 = and i32 %79, %80
  %82 = icmp eq i32 %81, 0
  br i1 %82, label %83, label %88

83:                                               ; preds = %73
  %84 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %9, align 8
  %85 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %84, i32 0, i32 0
  %86 = ptrtoint i32* %85 to i32
  %87 = call i32 @wakeup(i32 %86)
  br label %88

88:                                               ; preds = %83, %73
  %89 = load %struct.dlil_threading_info*, %struct.dlil_threading_info** %9, align 8
  %90 = getelementptr inbounds %struct.dlil_threading_info, %struct.dlil_threading_info* %89, i32 0, i32 1
  %91 = call i32 @lck_mtx_unlock(i32* %90)
  br label %94

92:                                               ; preds = %44
  %93 = load i32, i32* @ENOENT, align 4
  store i32 %93, i32* %3, align 4
  br label %95

94:                                               ; preds = %88
  store i32 0, i32* %3, align 4
  br label %95

95:                                               ; preds = %94, %92
  %96 = load i32, i32* %3, align 4
  ret i32 %96
}

declare dso_local i32 @proto_hash_value(i64) #1

declare dso_local i32* @mbuf_nextpkt(i8*) #1

declare dso_local i32 @lck_mtx_lock(i32*) #1

declare dso_local i32 @mbuf_setnextpkt(i8*, i8*) #1

declare dso_local i32 @wakeup(i32) #1

declare dso_local i32 @lck_mtx_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
