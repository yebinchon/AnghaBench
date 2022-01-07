; ModuleID = '/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_buf.c_netplay_send_flush.c'
source_filename = "/home/carl/AnghaBench/RetroArch/network/netplay/extr_netplay_buf.c_netplay_send_flush.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket_buffer = type { i64, i64, i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @netplay_send_flush(%struct.socket_buffer* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket_buffer*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  store %struct.socket_buffer* %0, %struct.socket_buffer** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %9 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %10 = call i64 @buf_used(%struct.socket_buffer* %9)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %148

13:                                               ; preds = %3
  %14 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %15 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %18 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %78

21:                                               ; preds = %13
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %43

24:                                               ; preds = %21
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %27 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %26, i32 0, i32 2
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %30 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = add nsw i64 %28, %31
  %33 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %34 = call i64 @buf_used(%struct.socket_buffer* %33)
  %35 = call i32 @socket_send_all_blocking(i32 %25, i64 %32, i64 %34, i32 1)
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %24
  store i32 0, i32* %4, align 4
  br label %148

38:                                               ; preds = %24
  %39 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %40 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %39, i32 0, i32 0
  store i64 0, i64* %40, align 8
  %41 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %42 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %41, i32 0, i32 1
  store i64 0, i64* %42, align 8
  br label %77

43:                                               ; preds = %21
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %46 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %49 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = add nsw i64 %47, %50
  %52 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %53 = call i64 @buf_used(%struct.socket_buffer* %52)
  %54 = call i64 @socket_send_all_nonblocking(i32 %44, i64 %51, i64 %53, i32 1)
  store i64 %54, i64* %8, align 8
  %55 = load i64, i64* %8, align 8
  %56 = icmp slt i64 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %148

58:                                               ; preds = %43
  %59 = load i64, i64* %8, align 8
  %60 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %61 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %60, i32 0, i32 1
  %62 = load i64, i64* %61, align 8
  %63 = add nsw i64 %62, %59
  store i64 %63, i64* %61, align 8
  %64 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %65 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %68 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = icmp eq i64 %66, %69
  br i1 %70, label %71, label %76

71:                                               ; preds = %58
  %72 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %73 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %72, i32 0, i32 0
  store i64 0, i64* %73, align 8
  %74 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %75 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  br label %76

76:                                               ; preds = %71, %58
  br label %77

77:                                               ; preds = %76, %38
  br label %147

78:                                               ; preds = %13
  %79 = load i32, i32* %7, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %106

81:                                               ; preds = %78
  %82 = load i32, i32* %6, align 4
  %83 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %84 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %87 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %86, i32 0, i32 1
  %88 = load i64, i64* %87, align 8
  %89 = add nsw i64 %85, %88
  %90 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %91 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %94 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %93, i32 0, i32 1
  %95 = load i64, i64* %94, align 8
  %96 = sub nsw i64 %92, %95
  %97 = call i32 @socket_send_all_blocking(i32 %82, i64 %89, i64 %96, i32 1)
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %100, label %99

99:                                               ; preds = %81
  store i32 0, i32* %4, align 4
  br label %148

100:                                              ; preds = %81
  %101 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %102 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %101, i32 0, i32 1
  store i64 0, i64* %102, align 8
  %103 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %104 = load i32, i32* %6, align 4
  %105 = call i32 @netplay_send_flush(%struct.socket_buffer* %103, i32 %104, i32 1)
  store i32 %105, i32* %4, align 4
  br label %148

106:                                              ; preds = %78
  %107 = load i32, i32* %6, align 4
  %108 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %109 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %108, i32 0, i32 2
  %110 = load i64, i64* %109, align 8
  %111 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %112 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %111, i32 0, i32 1
  %113 = load i64, i64* %112, align 8
  %114 = add nsw i64 %110, %113
  %115 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %116 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %115, i32 0, i32 3
  %117 = load i64, i64* %116, align 8
  %118 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %119 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %118, i32 0, i32 1
  %120 = load i64, i64* %119, align 8
  %121 = sub nsw i64 %117, %120
  %122 = call i64 @socket_send_all_nonblocking(i32 %107, i64 %114, i64 %121, i32 1)
  store i64 %122, i64* %8, align 8
  %123 = load i64, i64* %8, align 8
  %124 = icmp slt i64 %123, 0
  br i1 %124, label %125, label %126

125:                                              ; preds = %106
  store i32 0, i32* %4, align 4
  br label %148

126:                                              ; preds = %106
  %127 = load i64, i64* %8, align 8
  %128 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %129 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %128, i32 0, i32 1
  %130 = load i64, i64* %129, align 8
  %131 = add nsw i64 %130, %127
  store i64 %131, i64* %129, align 8
  %132 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %133 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %132, i32 0, i32 1
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %136 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %135, i32 0, i32 3
  %137 = load i64, i64* %136, align 8
  %138 = icmp sge i64 %134, %137
  br i1 %138, label %139, label %145

139:                                              ; preds = %126
  %140 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %141 = getelementptr inbounds %struct.socket_buffer, %struct.socket_buffer* %140, i32 0, i32 1
  store i64 0, i64* %141, align 8
  %142 = load %struct.socket_buffer*, %struct.socket_buffer** %5, align 8
  %143 = load i32, i32* %6, align 4
  %144 = call i32 @netplay_send_flush(%struct.socket_buffer* %142, i32 %143, i32 0)
  store i32 %144, i32* %4, align 4
  br label %148

145:                                              ; preds = %126
  br label %146

146:                                              ; preds = %145
  br label %147

147:                                              ; preds = %146, %77
  store i32 1, i32* %4, align 4
  br label %148

148:                                              ; preds = %147, %139, %125, %100, %99, %57, %37, %12
  %149 = load i32, i32* %4, align 4
  ret i32 %149
}

declare dso_local i64 @buf_used(%struct.socket_buffer*) #1

declare dso_local i32 @socket_send_all_blocking(i32, i64, i64, i32) #1

declare dso_local i64 @socket_send_all_nonblocking(i32, i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
