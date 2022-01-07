; ModuleID = '/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_read.c'
source_filename = "/home/carl/AnghaBench/RetroArch/wii/libogc/libdb/extr_tcpip.c_tcpip_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.uip_pbuf = type { i64, i64 }
%struct.tcpip_sock = type { i64, %struct.uip_pbuf* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tcpip_read(i32 %0, i8* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.uip_pbuf*, align 8
  %12 = alloca %struct.tcpip_sock*, align 8
  store i32 %0, i32* %5, align 4
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load i32, i32* %5, align 4
  %14 = call %struct.tcpip_sock* @tcpip_getsocket(i32 %13)
  store %struct.tcpip_sock* %14, %struct.tcpip_sock** %12, align 8
  %15 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %16 = icmp ne %struct.tcpip_sock* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 -1, i32* %4, align 4
  br label %113

18:                                               ; preds = %3
  br label %19

19:                                               ; preds = %21, %18
  %20 = call i32 (...) @__tcpip_poll()
  br label %21

21:                                               ; preds = %19
  %22 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %23 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %22, i32 0, i32 1
  %24 = load %struct.uip_pbuf*, %struct.uip_pbuf** %23, align 8
  %25 = icmp eq %struct.uip_pbuf* %24, null
  br i1 %25, label %19, label %26

26:                                               ; preds = %21
  %27 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %28 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %27, i32 0, i32 1
  %29 = load %struct.uip_pbuf*, %struct.uip_pbuf** %28, align 8
  %30 = icmp ne %struct.uip_pbuf* %29, null
  br i1 %30, label %31, label %112

31:                                               ; preds = %26
  store i64 0, i64* %8, align 8
  %32 = load i8*, i8** %6, align 8
  %33 = bitcast i8* %32 to i32*
  store i32* %33, i32** %10, align 8
  br label %34

34:                                               ; preds = %108, %31
  %35 = load i64, i64* %7, align 8
  %36 = icmp sgt i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %34
  %38 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %39 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %38, i32 0, i32 1
  %40 = load %struct.uip_pbuf*, %struct.uip_pbuf** %39, align 8
  %41 = icmp ne %struct.uip_pbuf* %40, null
  br label %42

42:                                               ; preds = %37, %34
  %43 = phi i1 [ false, %34 ], [ %41, %37 ]
  br i1 %43, label %44, label %109

44:                                               ; preds = %42
  %45 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %46 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %45, i32 0, i32 1
  %47 = load %struct.uip_pbuf*, %struct.uip_pbuf** %46, align 8
  store %struct.uip_pbuf* %47, %struct.uip_pbuf** %11, align 8
  %48 = load i64, i64* %7, align 8
  %49 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %50 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %53 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = sub nsw i64 %51, %54
  %56 = icmp sgt i64 %48, %55
  br i1 %56, label %57, label %65

57:                                               ; preds = %44
  %58 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %59 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %62 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = sub nsw i64 %60, %63
  store i64 %64, i64* %9, align 8
  br label %67

65:                                               ; preds = %44
  %66 = load i64, i64* %7, align 8
  store i64 %66, i64* %9, align 8
  br label %67

67:                                               ; preds = %65, %57
  %68 = load i32*, i32** %10, align 8
  %69 = load i64, i64* %8, align 8
  %70 = getelementptr inbounds i32, i32* %68, i64 %69
  %71 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %72 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = inttoptr i64 %73 to i32*
  %75 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %76 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = getelementptr inbounds i32, i32* %74, i64 %77
  %79 = load i64, i64* %9, align 8
  %80 = call i32 @UIP_MEMCPY(i32* %70, i32* %78, i64 %79)
  %81 = load i64, i64* %9, align 8
  %82 = load i64, i64* %8, align 8
  %83 = add nsw i64 %82, %81
  store i64 %83, i64* %8, align 8
  %84 = load i64, i64* %9, align 8
  %85 = load i64, i64* %7, align 8
  %86 = sub nsw i64 %85, %84
  store i64 %86, i64* %7, align 8
  %87 = load i64, i64* %9, align 8
  %88 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %89 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %88, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, %87
  store i64 %91, i64* %89, align 8
  %92 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %93 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %96 = getelementptr inbounds %struct.uip_pbuf, %struct.uip_pbuf* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %94, %97
  br i1 %98, label %99, label %108

99:                                               ; preds = %67
  %100 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %101 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %100, i32 0, i32 0
  store i64 0, i64* %101, align 8
  %102 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %103 = call %struct.uip_pbuf* @uip_pbuf_dequeue(%struct.uip_pbuf* %102)
  %104 = load %struct.tcpip_sock*, %struct.tcpip_sock** %12, align 8
  %105 = getelementptr inbounds %struct.tcpip_sock, %struct.tcpip_sock* %104, i32 0, i32 1
  store %struct.uip_pbuf* %103, %struct.uip_pbuf** %105, align 8
  %106 = load %struct.uip_pbuf*, %struct.uip_pbuf** %11, align 8
  %107 = call i32 @uip_pbuf_free(%struct.uip_pbuf* %106)
  br label %108

108:                                              ; preds = %99, %67
  br label %34

109:                                              ; preds = %42
  %110 = load i64, i64* %8, align 8
  %111 = trunc i64 %110 to i32
  store i32 %111, i32* %4, align 4
  br label %113

112:                                              ; preds = %26
  store i32 -1, i32* %4, align 4
  br label %113

113:                                              ; preds = %112, %109, %17
  %114 = load i32, i32* %4, align 4
  ret i32 %114
}

declare dso_local %struct.tcpip_sock* @tcpip_getsocket(i32) #1

declare dso_local i32 @__tcpip_poll(...) #1

declare dso_local i32 @UIP_MEMCPY(i32*, i32*, i64) #1

declare dso_local %struct.uip_pbuf* @uip_pbuf_dequeue(%struct.uip_pbuf*) #1

declare dso_local i32 @uip_pbuf_free(%struct.uip_pbuf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
