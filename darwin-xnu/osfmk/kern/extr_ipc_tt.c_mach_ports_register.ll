; ModuleID = '/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_mach_ports_register.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/osfmk/kern/extr_ipc_tt.c_mach_ports_register.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, i64* }

@TASK_PORT_REGISTER_MAX = common dso_local global i32 0, align 4
@TASK_NULL = common dso_local global %struct.TYPE_6__* null, align 8
@KERN_INVALID_ARGUMENT = common dso_local global i32 0, align 4
@IP_NULL = common dso_local global i64 0, align 8
@KERN_SUCCESS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @mach_ports_register(%struct.TYPE_6__* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load i32, i32* @TASK_PORT_REGISTER_MAX, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i64, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %18 = load %struct.TYPE_6__*, %struct.TYPE_6__** @TASK_NULL, align 8
  %19 = icmp eq %struct.TYPE_6__* %17, %18
  br i1 %19, label %30, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @TASK_PORT_REGISTER_MAX, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %30, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i64*, i64** %6, align 8
  %29 = icmp eq i64* %28, null
  br i1 %29, label %30, label %32

30:                                               ; preds = %27, %20, %3
  %31 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %31, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %140

32:                                               ; preds = %27, %24
  store i32 0, i32* %10, align 4
  br label %33

33:                                               ; preds = %46, %32
  %34 = load i32, i32* %10, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ult i32 %34, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %33
  %38 = load i64*, i64** %6, align 8
  %39 = load i32, i32* %10, align 4
  %40 = zext i32 %39 to i64
  %41 = getelementptr inbounds i64, i64* %38, i64 %40
  %42 = load i64, i64* %41, align 8
  %43 = load i32, i32* %10, align 4
  %44 = zext i32 %43 to i64
  %45 = getelementptr inbounds i64, i64* %16, i64 %44
  store i64 %42, i64* %45, align 8
  br label %46

46:                                               ; preds = %37
  %47 = load i32, i32* %10, align 4
  %48 = add i32 %47, 1
  store i32 %48, i32* %10, align 4
  br label %33

49:                                               ; preds = %33
  br label %50

50:                                               ; preds = %59, %49
  %51 = load i32, i32* %10, align 4
  %52 = load i32, i32* @TASK_PORT_REGISTER_MAX, align 4
  %53 = icmp ult i32 %51, %52
  br i1 %53, label %54, label %62

54:                                               ; preds = %50
  %55 = load i64, i64* @IP_NULL, align 8
  %56 = load i32, i32* %10, align 4
  %57 = zext i32 %56 to i64
  %58 = getelementptr inbounds i64, i64* %16, i64 %57
  store i64 %55, i64* %58, align 8
  br label %59

59:                                               ; preds = %54
  %60 = load i32, i32* %10, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %10, align 4
  br label %50

62:                                               ; preds = %50
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %64 = call i32 @itk_lock(%struct.TYPE_6__* %63)
  %65 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 0
  %67 = load i64, i64* %66, align 8
  %68 = load i64, i64* @IP_NULL, align 8
  %69 = icmp eq i64 %67, %68
  br i1 %69, label %70, label %74

70:                                               ; preds = %62
  %71 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %72 = call i32 @itk_unlock(%struct.TYPE_6__* %71)
  %73 = load i32, i32* @KERN_INVALID_ARGUMENT, align 4
  store i32 %73, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %140

74:                                               ; preds = %62
  store i32 0, i32* %10, align 4
  br label %75

75:                                               ; preds = %101, %74
  %76 = load i32, i32* %10, align 4
  %77 = load i32, i32* @TASK_PORT_REGISTER_MAX, align 4
  %78 = icmp ult i32 %76, %77
  br i1 %78, label %79, label %104

79:                                               ; preds = %75
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 1
  %82 = load i64*, i64** %81, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = getelementptr inbounds i64, i64* %82, i64 %84
  %86 = load i64, i64* %85, align 8
  store i64 %86, i64* %12, align 8
  %87 = load i32, i32* %10, align 4
  %88 = zext i32 %87 to i64
  %89 = getelementptr inbounds i64, i64* %16, i64 %88
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 1
  %93 = load i64*, i64** %92, align 8
  %94 = load i32, i32* %10, align 4
  %95 = zext i32 %94 to i64
  %96 = getelementptr inbounds i64, i64* %93, i64 %95
  store i64 %90, i64* %96, align 8
  %97 = load i64, i64* %12, align 8
  %98 = load i32, i32* %10, align 4
  %99 = zext i32 %98 to i64
  %100 = getelementptr inbounds i64, i64* %16, i64 %99
  store i64 %97, i64* %100, align 8
  br label %101

101:                                              ; preds = %79
  %102 = load i32, i32* %10, align 4
  %103 = add i32 %102, 1
  store i32 %103, i32* %10, align 4
  br label %75

104:                                              ; preds = %75
  %105 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %106 = call i32 @itk_unlock(%struct.TYPE_6__* %105)
  store i32 0, i32* %10, align 4
  br label %107

107:                                              ; preds = %125, %104
  %108 = load i32, i32* %10, align 4
  %109 = load i32, i32* @TASK_PORT_REGISTER_MAX, align 4
  %110 = icmp ult i32 %108, %109
  br i1 %110, label %111, label %128

111:                                              ; preds = %107
  %112 = load i32, i32* %10, align 4
  %113 = zext i32 %112 to i64
  %114 = getelementptr inbounds i64, i64* %16, i64 %113
  %115 = load i64, i64* %114, align 8
  %116 = call i64 @IP_VALID(i64 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %124

118:                                              ; preds = %111
  %119 = load i32, i32* %10, align 4
  %120 = zext i32 %119 to i64
  %121 = getelementptr inbounds i64, i64* %16, i64 %120
  %122 = load i64, i64* %121, align 8
  %123 = call i32 @ipc_port_release_send(i64 %122)
  br label %124

124:                                              ; preds = %118, %111
  br label %125

125:                                              ; preds = %124
  %126 = load i32, i32* %10, align 4
  %127 = add i32 %126, 1
  store i32 %127, i32* %10, align 4
  br label %107

128:                                              ; preds = %107
  %129 = load i32, i32* %7, align 4
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %128
  %132 = load i64*, i64** %6, align 8
  %133 = load i32, i32* %7, align 4
  %134 = sext i32 %133 to i64
  %135 = mul i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = call i32 @kfree(i64* %132, i32 %136)
  br label %138

138:                                              ; preds = %131, %128
  %139 = load i32, i32* @KERN_SUCCESS, align 4
  store i32 %139, i32* %4, align 4
  store i32 1, i32* %11, align 4
  br label %140

140:                                              ; preds = %138, %70, %30
  %141 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %4, align 4
  ret i32 %142
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @itk_lock(%struct.TYPE_6__*) #2

declare dso_local i32 @itk_unlock(%struct.TYPE_6__*) #2

declare dso_local i64 @IP_VALID(i64) #2

declare dso_local i32 @ipc_port_release_send(i64) #2

declare dso_local i32 @kfree(i64*, i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
