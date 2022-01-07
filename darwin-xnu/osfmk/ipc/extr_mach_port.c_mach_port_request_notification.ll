; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_request_notification.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/ipc/extr_mach_port.c_mach_port_request_notification.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@IS_NULL = common dso_local global i64 0, align 8
@KERN_INVALID_TASK = common dso_local global i64 0, align 8
@IP_DEAD = common dso_local global i64 0, align 8
@KERN_INVALID_CAPABILITY = common dso_local global i64 0, align 8
@KERN_INVALID_VALUE = common dso_local global i64 0, align 8
@KERN_INVALID_RIGHT = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i64 0, align 8
@IKOT_NONE = common dso_local global i32 0, align 4
@KERN_INVALID_ARGUMENT = common dso_local global i64 0, align 8
@TRUE = common dso_local global i32 0, align 4
@FALSE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @mach_port_request_notification(i64 %0, i32 %1, i32 %2, i32 %3, i64 %4, i64* %5) #0 {
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store i64 %0, i64* %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i64 %4, i64* %12, align 8
  store i64* %5, i64** %13, align 8
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @IS_NULL, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i64, i64* @KERN_INVALID_TASK, align 8
  store i64 %22, i64* %7, align 8
  br label %135

23:                                               ; preds = %6
  %24 = load i64, i64* %12, align 8
  %25 = load i64, i64* @IP_DEAD, align 8
  %26 = icmp eq i64 %24, %25
  br i1 %26, label %27, label %29

27:                                               ; preds = %23
  %28 = load i64, i64* @KERN_INVALID_CAPABILITY, align 8
  store i64 %28, i64* %7, align 8
  br label %135

29:                                               ; preds = %23
  %30 = load i32, i32* %10, align 4
  switch i32 %30, label %131 [
    i32 129, label %31
    i32 130, label %66
    i32 128, label %87
    i32 131, label %109
  ]

31:                                               ; preds = %29
  %32 = load i32, i32* %11, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %36

34:                                               ; preds = %31
  %35 = load i64, i64* @KERN_INVALID_VALUE, align 8
  store i64 %35, i64* %7, align 8
  br label %135

36:                                               ; preds = %31
  %37 = load i32, i32* %9, align 4
  %38 = call i32 @MACH_PORT_VALID(i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %42, label %40

40:                                               ; preds = %36
  %41 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %41, i64* %7, align 8
  br label %135

42:                                               ; preds = %36
  %43 = load i64, i64* %8, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i64 @ipc_port_translate_receive(i64 %43, i32 %44, i64* %15)
  store i64 %45, i64* %14, align 8
  %46 = load i64, i64* %14, align 8
  %47 = load i64, i64* @KERN_SUCCESS, align 8
  %48 = icmp ne i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %42
  %50 = load i64, i64* %14, align 8
  store i64 %50, i64* %7, align 8
  br label %135

51:                                               ; preds = %42
  %52 = load i64, i64* %15, align 8
  %53 = call i32 @ip_kotype(i64 %52)
  %54 = load i32, i32* @IKOT_NONE, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %60

56:                                               ; preds = %51
  %57 = load i64, i64* %15, align 8
  %58 = call i32 @ip_unlock(i64 %57)
  %59 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %59, i64* %7, align 8
  br label %135

60:                                               ; preds = %51
  %61 = load i64, i64* %15, align 8
  %62 = load i64, i64* %12, align 8
  %63 = call i32 @ipc_port_pdrequest(i64 %61, i64 %62, i64* %16)
  %64 = load i64, i64* %16, align 8
  %65 = load i64*, i64** %13, align 8
  store i64 %64, i64* %65, align 8
  br label %133

66:                                               ; preds = %29
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @MACH_PORT_VALID(i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %72, label %70

70:                                               ; preds = %66
  %71 = load i64, i64* @KERN_INVALID_RIGHT, align 8
  store i64 %71, i64* %7, align 8
  br label %135

72:                                               ; preds = %66
  %73 = load i64, i64* %8, align 8
  %74 = load i32, i32* %9, align 4
  %75 = call i64 @ipc_port_translate_receive(i64 %73, i32 %74, i64* %17)
  store i64 %75, i64* %14, align 8
  %76 = load i64, i64* %14, align 8
  %77 = load i64, i64* @KERN_SUCCESS, align 8
  %78 = icmp ne i64 %76, %77
  br i1 %78, label %79, label %81

79:                                               ; preds = %72
  %80 = load i64, i64* %14, align 8
  store i64 %80, i64* %7, align 8
  br label %135

81:                                               ; preds = %72
  %82 = load i64, i64* %17, align 8
  %83 = load i32, i32* %11, align 4
  %84 = load i64, i64* %12, align 8
  %85 = load i64*, i64** %13, align 8
  %86 = call i32 @ipc_port_nsrequest(i64 %82, i32 %83, i64 %84, i64* %85)
  br label %133

87:                                               ; preds = %29
  %88 = load i32, i32* %9, align 4
  %89 = call i32 @MACH_PORT_VALID(i32 %88)
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %87
  %92 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %92, i64* %7, align 8
  br label %135

93:                                               ; preds = %87
  %94 = load i64, i64* %8, align 8
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* %11, align 4
  %97 = icmp ne i32 %96, 0
  %98 = zext i1 %97 to i32
  %99 = load i32, i32* @TRUE, align 4
  %100 = load i64, i64* %12, align 8
  %101 = load i64*, i64** %13, align 8
  %102 = call i64 @ipc_right_request_alloc(i64 %94, i32 %95, i32 %98, i32 %99, i64 %100, i64* %101)
  store i64 %102, i64* %14, align 8
  %103 = load i64, i64* %14, align 8
  %104 = load i64, i64* @KERN_SUCCESS, align 8
  %105 = icmp ne i64 %103, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %93
  %107 = load i64, i64* %14, align 8
  store i64 %107, i64* %7, align 8
  br label %135

108:                                              ; preds = %93
  br label %133

109:                                              ; preds = %29
  %110 = load i32, i32* %9, align 4
  %111 = call i32 @MACH_PORT_VALID(i32 %110)
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %115, label %113

113:                                              ; preds = %109
  %114 = load i64, i64* @KERN_INVALID_ARGUMENT, align 8
  store i64 %114, i64* %7, align 8
  br label %135

115:                                              ; preds = %109
  %116 = load i64, i64* %8, align 8
  %117 = load i32, i32* %9, align 4
  %118 = load i32, i32* %11, align 4
  %119 = icmp ne i32 %118, 0
  %120 = zext i1 %119 to i32
  %121 = load i32, i32* @FALSE, align 4
  %122 = load i64, i64* %12, align 8
  %123 = load i64*, i64** %13, align 8
  %124 = call i64 @ipc_right_request_alloc(i64 %116, i32 %117, i32 %120, i32 %121, i64 %122, i64* %123)
  store i64 %124, i64* %14, align 8
  %125 = load i64, i64* %14, align 8
  %126 = load i64, i64* @KERN_SUCCESS, align 8
  %127 = icmp ne i64 %125, %126
  br i1 %127, label %128, label %130

128:                                              ; preds = %115
  %129 = load i64, i64* %14, align 8
  store i64 %129, i64* %7, align 8
  br label %135

130:                                              ; preds = %115
  br label %133

131:                                              ; preds = %29
  %132 = load i64, i64* @KERN_INVALID_VALUE, align 8
  store i64 %132, i64* %7, align 8
  br label %135

133:                                              ; preds = %130, %108, %81, %60
  %134 = load i64, i64* @KERN_SUCCESS, align 8
  store i64 %134, i64* %7, align 8
  br label %135

135:                                              ; preds = %133, %131, %128, %113, %106, %91, %79, %70, %56, %49, %40, %34, %27, %21
  %136 = load i64, i64* %7, align 8
  ret i64 %136
}

declare dso_local i32 @MACH_PORT_VALID(i32) #1

declare dso_local i64 @ipc_port_translate_receive(i64, i32, i64*) #1

declare dso_local i32 @ip_kotype(i64) #1

declare dso_local i32 @ip_unlock(i64) #1

declare dso_local i32 @ipc_port_pdrequest(i64, i64, i64*) #1

declare dso_local i32 @ipc_port_nsrequest(i64, i32, i64, i64*) #1

declare dso_local i64 @ipc_right_request_alloc(i64, i32, i32, i32, i64, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
