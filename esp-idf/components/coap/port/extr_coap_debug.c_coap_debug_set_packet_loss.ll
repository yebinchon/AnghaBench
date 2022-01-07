; ModuleID = '/home/carl/AnghaBench/esp-idf/components/coap/port/extr_coap_debug.c_coap_debug_set_packet_loss.c'
source_filename = "/home/carl/AnghaBench/esp-idf/components/coap/port/extr_coap_debug.c_coap_debug_set_packet_loss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i32 }

@packet_loss_level = common dso_local global i32 0, align 4
@LOG_DEBUG = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"packet loss level set to %d%%\0A\00", align 1
@packet_loss_intervals = common dso_local global %struct.TYPE_2__* null, align 8
@num_packet_loss_intervals = common dso_local global i32 0, align 4
@send_packet_count = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @coap_debug_set_packet_loss(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %8 = load i8*, i8** %3, align 8
  store i8* %8, i8** %4, align 8
  store i8* null, i8** %5, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i64 @strtol(i8* %9, i8** %5, i32 10)
  %11 = trunc i64 %10 to i32
  store i32 %11, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %12 = load i8*, i8** %5, align 8
  %13 = load i8*, i8** %4, align 8
  %14 = icmp eq i8* %12, %13
  br i1 %14, label %18, label %15

15:                                               ; preds = %1
  %16 = load i32, i32* %6, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15, %1
  store i32 0, i32* %2, align 4
  br label %108

19:                                               ; preds = %15
  %20 = load i8*, i8** %5, align 8
  %21 = load i8, i8* %20, align 1
  %22 = sext i8 %21 to i32
  %23 = icmp eq i32 %22, 37
  br i1 %23, label %24, label %35

24:                                               ; preds = %19
  %25 = load i32, i32* %6, align 4
  %26 = icmp sgt i32 %25, 100
  br i1 %26, label %27, label %28

27:                                               ; preds = %24
  store i32 100, i32* %6, align 4
  br label %28

28:                                               ; preds = %27, %24
  %29 = load i32, i32* %6, align 4
  %30 = mul nsw i32 %29, 65536
  %31 = sdiv i32 %30, 100
  store i32 %31, i32* @packet_loss_level, align 4
  %32 = load i32, i32* @LOG_DEBUG, align 4
  %33 = load i32, i32* %6, align 4
  %34 = call i32 @coap_log(i32 %32, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %107

35:                                               ; preds = %19
  %36 = load i32, i32* %6, align 4
  %37 = icmp sle i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %35
  store i32 0, i32* %2, align 4
  br label %108

39:                                               ; preds = %35
  br label %40

40:                                               ; preds = %100, %39
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 10
  br i1 %42, label %43, label %101

43:                                               ; preds = %40
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @packet_loss_intervals, align 8
  %46 = load i32, i32* %7, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  store i32 %44, i32* %49, align 4
  %50 = load i8*, i8** %5, align 8
  %51 = load i8, i8* %50, align 1
  %52 = sext i8 %51 to i32
  %53 = icmp eq i32 %52, 45
  br i1 %53, label %54, label %68

54:                                               ; preds = %43
  %55 = load i8*, i8** %5, align 8
  %56 = getelementptr inbounds i8, i8* %55, i64 1
  store i8* %56, i8** %4, align 8
  %57 = load i8*, i8** %4, align 8
  %58 = call i64 @strtol(i8* %57, i8** %5, i32 10)
  %59 = trunc i64 %58 to i32
  store i32 %59, i32* %6, align 4
  %60 = load i8*, i8** %5, align 8
  %61 = load i8*, i8** %4, align 8
  %62 = icmp eq i8* %60, %61
  br i1 %62, label %66, label %63

63:                                               ; preds = %54
  %64 = load i32, i32* %6, align 4
  %65 = icmp sle i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %63, %54
  store i32 0, i32* %2, align 4
  br label %108

67:                                               ; preds = %63
  br label %68

68:                                               ; preds = %67, %43
  %69 = load i32, i32* %6, align 4
  %70 = load %struct.TYPE_2__*, %struct.TYPE_2__** @packet_loss_intervals, align 8
  %71 = load i32, i32* %7, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %7, align 4
  %73 = sext i32 %71 to i64
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %70, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %74, i32 0, i32 1
  store i32 %69, i32* %75, align 4
  %76 = load i8*, i8** %5, align 8
  %77 = load i8, i8* %76, align 1
  %78 = sext i8 %77 to i32
  %79 = icmp eq i32 %78, 0
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %101

81:                                               ; preds = %68
  %82 = load i8*, i8** %5, align 8
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = icmp ne i32 %84, 44
  br i1 %85, label %86, label %87

86:                                               ; preds = %81
  store i32 0, i32* %2, align 4
  br label %108

87:                                               ; preds = %81
  %88 = load i8*, i8** %5, align 8
  %89 = getelementptr inbounds i8, i8* %88, i64 1
  store i8* %89, i8** %4, align 8
  %90 = load i8*, i8** %4, align 8
  %91 = call i64 @strtol(i8* %90, i8** %5, i32 10)
  %92 = trunc i64 %91 to i32
  store i32 %92, i32* %6, align 4
  %93 = load i8*, i8** %5, align 8
  %94 = load i8*, i8** %4, align 8
  %95 = icmp eq i8* %93, %94
  br i1 %95, label %99, label %96

96:                                               ; preds = %87
  %97 = load i32, i32* %6, align 4
  %98 = icmp sle i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %96, %87
  store i32 0, i32* %2, align 4
  br label %108

100:                                              ; preds = %96
  br label %40

101:                                              ; preds = %80, %40
  %102 = load i32, i32* %7, align 4
  %103 = icmp eq i32 %102, 10
  br i1 %103, label %104, label %105

104:                                              ; preds = %101
  store i32 0, i32* %2, align 4
  br label %108

105:                                              ; preds = %101
  %106 = load i32, i32* %7, align 4
  store i32 %106, i32* @num_packet_loss_intervals, align 4
  br label %107

107:                                              ; preds = %105, %28
  store i64 0, i64* @send_packet_count, align 8
  store i32 1, i32* %2, align 4
  br label %108

108:                                              ; preds = %107, %104, %99, %86, %66, %38, %18
  %109 = load i32, i32* %2, align 4
  ret i32 %109
}

declare dso_local i64 @strtol(i8*, i8**, i32) #1

declare dso_local i32 @coap_log(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
