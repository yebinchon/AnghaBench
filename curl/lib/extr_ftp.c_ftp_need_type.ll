; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_need_type.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_need_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i8 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32)* @ftp_need_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_need_type(%struct.connectdata* %0, i32 %1) #0 {
  %3 = alloca %struct.connectdata*, align 8
  %4 = alloca i32, align 4
  store %struct.connectdata* %0, %struct.connectdata** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load %struct.connectdata*, %struct.connectdata** %3, align 8
  %6 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i8, i8* %8, align 1
  %10 = sext i8 %9 to i32
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  %13 = zext i1 %12 to i64
  %14 = select i1 %12, i32 65, i32 73
  %15 = icmp ne i32 %10, %14
  %16 = zext i1 %15 to i32
  ret i32 %16
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
