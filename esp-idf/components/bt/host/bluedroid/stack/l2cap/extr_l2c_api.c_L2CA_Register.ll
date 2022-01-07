; ModuleID = '/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_Register.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/bt/host/bluedroid/stack/l2cap/extr_l2c_api.c_L2CA_Register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { i32, %struct.TYPE_7__ }

@.str = private unnamed_addr constant [38 x i8] c"L2CAP - no cb registering PSM: 0x%04x\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"L2CAP - invalid PSM value, PSM: 0x%04x\00", align 1
@.str.2 = private unnamed_addr constant [52 x i8] c"L2CAP - no RCB available, PSM: 0x%04x  vPSM: 0x%04x\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @L2CA_Register(i32 %0, %struct.TYPE_7__* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__*, align 8
  %6 = alloca %struct.TYPE_6__*, align 8
  %7 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.TYPE_7__* %1, %struct.TYPE_7__** %5, align 8
  %8 = load i32, i32* %4, align 4
  store i32 %8, i32* %7, align 4
  %9 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %28

13:                                               ; preds = %2
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 3
  %16 = load i32, i32* %15, align 8
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %13
  %19 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %20 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %28

23:                                               ; preds = %18
  %24 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %23, %18, %13, %2
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i32 %29)
  store i32 0, i32* %3, align 4
  br label %83

31:                                               ; preds = %23
  %32 = load i32, i32* %4, align 4
  %33 = call i64 @L2C_INVALID_PSM(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %31
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @L2CAP_TRACE_ERROR(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %36)
  store i32 0, i32* %3, align 4
  br label %83

38:                                               ; preds = %31
  %39 = load i32, i32* %4, align 4
  %40 = icmp sge i32 %39, 4097
  br i1 %40, label %41, label %60

41:                                               ; preds = %38
  %42 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = icmp eq i32* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %41
  store i32 4098, i32* %7, align 4
  br label %47

47:                                               ; preds = %56, %46
  %48 = load i32, i32* %7, align 4
  %49 = icmp slt i32 %48, 32768
  br i1 %49, label %50, label %59

50:                                               ; preds = %47
  %51 = load i32, i32* %7, align 4
  %52 = call %struct.TYPE_6__* @l2cu_find_rcb_by_psm(i32 %51)
  store %struct.TYPE_6__* %52, %struct.TYPE_6__** %6, align 8
  %53 = icmp eq %struct.TYPE_6__* %52, null
  br i1 %53, label %54, label %55

54:                                               ; preds = %50
  br label %59

55:                                               ; preds = %50
  br label %56

56:                                               ; preds = %55
  %57 = load i32, i32* %7, align 4
  %58 = add nsw i32 %57, 2
  store i32 %58, i32* %7, align 4
  br label %47

59:                                               ; preds = %54, %47
  br label %60

60:                                               ; preds = %59, %41, %38
  %61 = load i32, i32* %7, align 4
  %62 = call %struct.TYPE_6__* @l2cu_find_rcb_by_psm(i32 %61)
  store %struct.TYPE_6__* %62, %struct.TYPE_6__** %6, align 8
  %63 = icmp eq %struct.TYPE_6__* %62, null
  br i1 %63, label %64, label %73

64:                                               ; preds = %60
  %65 = load i32, i32* %7, align 4
  %66 = call %struct.TYPE_6__* @l2cu_allocate_rcb(i32 %65)
  store %struct.TYPE_6__* %66, %struct.TYPE_6__** %6, align 8
  %67 = icmp eq %struct.TYPE_6__* %66, null
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = load i32, i32* %4, align 4
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @L2CAP_TRACE_WARNING(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.2, i64 0, i64 0), i32 %69, i32 %70)
  store i32 0, i32* %3, align 4
  br label %83

72:                                               ; preds = %64
  br label %73

73:                                               ; preds = %72, %60
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 1
  %76 = load %struct.TYPE_7__*, %struct.TYPE_7__** %5, align 8
  %77 = bitcast %struct.TYPE_7__* %75 to i8*
  %78 = bitcast %struct.TYPE_7__* %76 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %77, i8* align 8 %78, i64 24, i1 false)
  %79 = load i32, i32* %4, align 4
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %6, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load i32, i32* %7, align 4
  store i32 %82, i32* %3, align 4
  br label %83

83:                                               ; preds = %73, %68, %35, %28
  %84 = load i32, i32* %3, align 4
  ret i32 %84
}

declare dso_local i32 @L2CAP_TRACE_ERROR(i8*, i32) #1

declare dso_local i64 @L2C_INVALID_PSM(i32) #1

declare dso_local %struct.TYPE_6__* @l2cu_find_rcb_by_psm(i32) #1

declare dso_local %struct.TYPE_6__* @l2cu_allocate_rcb(i32) #1

declare dso_local i32 @L2CAP_TRACE_WARNING(i8*, i32, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
