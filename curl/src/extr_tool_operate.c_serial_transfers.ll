; ModuleID = '/home/carl/AnghaBench/curl/src/extr_tool_operate.c_serial_transfers.c'
source_filename = "/home/carl/AnghaBench/curl/src/extr_tool_operate.c_serial_transfers.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.per_transfer = type { i32, i32 }
%struct.GlobalConfig = type { i32, i64, i64, i64 }

@CURLE_OK = common dso_local global i64 0, align 8
@FALSE = common dso_local global i32 0, align 4
@transfers = common dso_local global %struct.per_transfer* null, align 8
@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.GlobalConfig*, i32*)* @serial_transfers to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @serial_transfers(%struct.GlobalConfig* %0, i32* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.GlobalConfig*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.per_transfer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.GlobalConfig* %0, %struct.GlobalConfig** %4, align 8
  store i32* %1, i32** %5, align 8
  %12 = load i64, i64* @CURLE_OK, align 8
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* @CURLE_OK, align 8
  store i64 %13, i64* %7, align 8
  %14 = load i32, i32* @FALSE, align 4
  store i32 %14, i32* %9, align 4
  %15 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %16 = load i32*, i32** %5, align 8
  %17 = call i64 @create_transfer(%struct.GlobalConfig* %15, i32* %16, i32* %9)
  store i64 %17, i64* %7, align 8
  %18 = load i64, i64* %7, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* %9, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %25, label %23

23:                                               ; preds = %20, %2
  %24 = load i64, i64* %7, align 8
  store i64 %24, i64* %3, align 8
  br label %114

25:                                               ; preds = %20
  %26 = load %struct.per_transfer*, %struct.per_transfer** @transfers, align 8
  store %struct.per_transfer* %26, %struct.per_transfer** %8, align 8
  br label %27

27:                                               ; preds = %98, %61, %25
  %28 = load %struct.per_transfer*, %struct.per_transfer** %8, align 8
  %29 = icmp ne %struct.per_transfer* %28, null
  br i1 %29, label %30, label %99

30:                                               ; preds = %27
  %31 = load i32, i32* @FALSE, align 4
  store i32 %31, i32* %11, align 4
  %32 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %33 = load %struct.per_transfer*, %struct.per_transfer** %8, align 8
  %34 = call i64 @pre_transfer(%struct.GlobalConfig* %32, %struct.per_transfer* %33)
  store i64 %34, i64* %7, align 8
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %99

38:                                               ; preds = %30
  %39 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %40 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %39, i32 0, i32 3
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %38
  %44 = call i64 (...) @easysrc_perform()
  store i64 %44, i64* %7, align 8
  %45 = load i64, i64* %7, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %43
  br label %99

48:                                               ; preds = %43
  br label %49

49:                                               ; preds = %48, %38
  %50 = load %struct.per_transfer*, %struct.per_transfer** %8, align 8
  %51 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = call i64 @curl_easy_perform(i32 %52)
  store i64 %53, i64* %7, align 8
  %54 = load i64, i64* %7, align 8
  store i64 %54, i64* %6, align 8
  %55 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %56 = load %struct.per_transfer*, %struct.per_transfer** %8, align 8
  %57 = load i64, i64* %7, align 8
  %58 = call i64 @post_per_transfer(%struct.GlobalConfig* %55, %struct.per_transfer* %56, i64 %57, i32* %10)
  store i64 %58, i64* %7, align 8
  %59 = load i32, i32* %10, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %49
  br label %27

62:                                               ; preds = %49
  %63 = load i64, i64* %7, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %77, label %65

65:                                               ; preds = %62
  %66 = load i64, i64* %6, align 8
  %67 = call i64 @is_fatal_error(i64 %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %77, label %69

69:                                               ; preds = %65
  %70 = load i64, i64* %6, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %79

72:                                               ; preds = %69
  %73 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %74 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %79

77:                                               ; preds = %72, %65, %62
  %78 = load i32, i32* @TRUE, align 4
  store i32 %78, i32* %11, align 4
  br label %88

79:                                               ; preds = %72, %69
  %80 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %81 = load i32*, i32** %5, align 8
  %82 = call i64 @create_transfer(%struct.GlobalConfig* %80, i32* %81, i32* %9)
  store i64 %82, i64* %7, align 8
  %83 = load i64, i64* %7, align 8
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %79
  %86 = load i32, i32* @TRUE, align 4
  store i32 %86, i32* %11, align 4
  br label %87

87:                                               ; preds = %85, %79
  br label %88

88:                                               ; preds = %87, %77
  %89 = load %struct.per_transfer*, %struct.per_transfer** %8, align 8
  %90 = getelementptr inbounds %struct.per_transfer, %struct.per_transfer* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @delete_metalinkfile(i32 %91)
  %93 = load %struct.per_transfer*, %struct.per_transfer** %8, align 8
  %94 = call %struct.per_transfer* @del_per_transfer(%struct.per_transfer* %93)
  store %struct.per_transfer* %94, %struct.per_transfer** %8, align 8
  %95 = load i32, i32* %11, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  br label %99

98:                                               ; preds = %88
  br label %27

99:                                               ; preds = %97, %47, %37, %27
  %100 = load i64, i64* %6, align 8
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %104

102:                                              ; preds = %99
  %103 = load i64, i64* %6, align 8
  store i64 %103, i64* %7, align 8
  br label %104

104:                                              ; preds = %102, %99
  %105 = load i64, i64* %7, align 8
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %104
  %108 = load %struct.GlobalConfig*, %struct.GlobalConfig** %4, align 8
  %109 = getelementptr inbounds %struct.GlobalConfig, %struct.GlobalConfig* %108, i32 0, i32 0
  %110 = load i32, i32* %109, align 8
  %111 = call i32 @single_transfer_cleanup(i32 %110)
  br label %112

112:                                              ; preds = %107, %104
  %113 = load i64, i64* %7, align 8
  store i64 %113, i64* %3, align 8
  br label %114

114:                                              ; preds = %112, %23
  %115 = load i64, i64* %3, align 8
  ret i64 %115
}

declare dso_local i64 @create_transfer(%struct.GlobalConfig*, i32*, i32*) #1

declare dso_local i64 @pre_transfer(%struct.GlobalConfig*, %struct.per_transfer*) #1

declare dso_local i64 @easysrc_perform(...) #1

declare dso_local i64 @curl_easy_perform(i32) #1

declare dso_local i64 @post_per_transfer(%struct.GlobalConfig*, %struct.per_transfer*, i64, i32*) #1

declare dso_local i64 @is_fatal_error(i64) #1

declare dso_local i32 @delete_metalinkfile(i32) #1

declare dso_local %struct.per_transfer* @del_per_transfer(%struct.per_transfer*) #1

declare dso_local i32 @single_transfer_cleanup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
