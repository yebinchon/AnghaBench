; ModuleID = '/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_nb_type.c'
source_filename = "/home/carl/AnghaBench/curl/lib/extr_ftp.c_ftp_nb_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.connectdata = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { %struct.ftp_conn }
%struct.ftp_conn = type { i8, i32 }

@.str = private unnamed_addr constant [8 x i8] c"TYPE %c\00", align 1
@CURLE_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.connectdata*, i32, i32)* @ftp_nb_type to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ftp_nb_type(%struct.connectdata* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.connectdata*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.ftp_conn*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8, align 1
  store %struct.connectdata* %0, %struct.connectdata** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %12 = getelementptr inbounds %struct.connectdata, %struct.connectdata* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ftp_conn* %13, %struct.ftp_conn** %8, align 8
  %14 = load i32, i32* %6, align 4
  %15 = icmp ne i32 %14, 0
  %16 = zext i1 %15 to i64
  %17 = select i1 %15, i32 65, i32 73
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %10, align 1
  %19 = load %struct.ftp_conn*, %struct.ftp_conn** %8, align 8
  %20 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %19, i32 0, i32 0
  %21 = load i8, i8* %20, align 4
  %22 = sext i8 %21 to i32
  %23 = load i8, i8* %10, align 1
  %24 = sext i8 %23 to i32
  %25 = icmp eq i32 %22, %24
  br i1 %25, label %26, label %33

26:                                               ; preds = %3
  %27 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %28 = load i32, i32* %7, align 4
  %29 = call i32 @state(%struct.connectdata* %27, i32 %28)
  %30 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %31 = load i32, i32* %7, align 4
  %32 = call i32 @ftp_state_type_resp(%struct.connectdata* %30, i32 200, i32 %31)
  store i32 %32, i32* %4, align 4
  br label %45

33:                                               ; preds = %3
  %34 = load %struct.ftp_conn*, %struct.ftp_conn** %8, align 8
  %35 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %34, i32 0, i32 1
  %36 = load i8, i8* %10, align 1
  %37 = call i32 @PPSENDF(i32* %35, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i8 signext %36)
  %38 = load %struct.connectdata*, %struct.connectdata** %5, align 8
  %39 = load i32, i32* %7, align 4
  %40 = call i32 @state(%struct.connectdata* %38, i32 %39)
  %41 = load i8, i8* %10, align 1
  %42 = load %struct.ftp_conn*, %struct.ftp_conn** %8, align 8
  %43 = getelementptr inbounds %struct.ftp_conn, %struct.ftp_conn* %42, i32 0, i32 0
  store i8 %41, i8* %43, align 4
  %44 = load i32, i32* @CURLE_OK, align 4
  store i32 %44, i32* %4, align 4
  br label %45

45:                                               ; preds = %33, %26
  %46 = load i32, i32* %4, align 4
  ret i32 %46
}

declare dso_local i32 @state(%struct.connectdata*, i32) #1

declare dso_local i32 @ftp_state_type_resp(%struct.connectdata*, i32, i32) #1

declare dso_local i32 @PPSENDF(i32*, i8*, i8 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
