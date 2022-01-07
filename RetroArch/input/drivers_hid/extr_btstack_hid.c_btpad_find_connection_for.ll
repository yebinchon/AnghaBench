; ModuleID = '/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_find_connection_for.c'
source_filename = "/home/carl/AnghaBench/RetroArch/input/drivers_hid/extr_btstack_hid.c_btpad_find_connection_for.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.btstack_hid_adapter = type { i64, i32, i64 }

@MAX_USERS = common dso_local global i32 0, align 4
@g_connections = common dso_local global %struct.btstack_hid_adapter* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.btstack_hid_adapter* (i64, i64)* @btpad_find_connection_for to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.btstack_hid_adapter* @btpad_find_connection_for(i64 %0, i64 %1) #0 {
  %3 = alloca %struct.btstack_hid_adapter*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store i64 %0, i64* %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 0, i32* %6, align 4
  br label %7

7:                                                ; preds = %76, %2
  %8 = load i32, i32* %6, align 4
  %9 = load i32, i32* @MAX_USERS, align 4
  %10 = icmp ult i32 %8, %9
  br i1 %10, label %11, label %79

11:                                               ; preds = %7
  %12 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** @g_connections, align 8
  %13 = load i32, i32* %6, align 4
  %14 = zext i32 %13 to i64
  %15 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %12, i64 %14
  %16 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %28, label %19

19:                                               ; preds = %11
  %20 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** @g_connections, align 8
  %21 = load i32, i32* %6, align 4
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %20, i64 %22
  %24 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %19
  br label %76

28:                                               ; preds = %19, %11
  %29 = load i64, i64* %4, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** @g_connections, align 8
  %33 = load i32, i32* %6, align 4
  %34 = zext i32 %33 to i64
  %35 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %32, i64 %34
  %36 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %31
  %40 = load i64, i64* %4, align 8
  %41 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** @g_connections, align 8
  %42 = load i32, i32* %6, align 4
  %43 = zext i32 %42 to i64
  %44 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %41, i64 %43
  %45 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = icmp ne i64 %40, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %76

49:                                               ; preds = %39, %31, %28
  %50 = load i64, i64* %5, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %71

52:                                               ; preds = %49
  %53 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** @g_connections, align 8
  %54 = load i32, i32* %6, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %53, i64 %55
  %57 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %56, i32 0, i32 2
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %71

60:                                               ; preds = %52
  %61 = load i64, i64* %5, align 8
  %62 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** @g_connections, align 8
  %63 = load i32, i32* %6, align 4
  %64 = zext i32 %63 to i64
  %65 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %62, i64 %64
  %66 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = call i64 @BD_ADDR_CMP(i64 %61, i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %60
  br label %76

71:                                               ; preds = %60, %52, %49
  %72 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** @g_connections, align 8
  %73 = load i32, i32* %6, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.btstack_hid_adapter, %struct.btstack_hid_adapter* %72, i64 %74
  store %struct.btstack_hid_adapter* %75, %struct.btstack_hid_adapter** %3, align 8
  br label %80

76:                                               ; preds = %70, %48, %27
  %77 = load i32, i32* %6, align 4
  %78 = add i32 %77, 1
  store i32 %78, i32* %6, align 4
  br label %7

79:                                               ; preds = %7
  store %struct.btstack_hid_adapter* null, %struct.btstack_hid_adapter** %3, align 8
  br label %80

80:                                               ; preds = %79, %71
  %81 = load %struct.btstack_hid_adapter*, %struct.btstack_hid_adapter** %3, align 8
  ret %struct.btstack_hid_adapter* %81
}

declare dso_local i64 @BD_ADDR_CMP(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
