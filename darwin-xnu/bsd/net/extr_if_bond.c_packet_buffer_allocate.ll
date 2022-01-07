; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_packet_buffer_allocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if_bond.c_packet_buffer_allocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32 }

@MHLEN = common dso_local global i64 0, align 8
@MCLBYTES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"bond: packet_buffer_allocate size %d > max %u\0A\00", align 1
@M_WAITOK = common dso_local global i32 0, align 4
@MT_DATA = common dso_local global i32 0, align 4
@M_PKTHDR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.TYPE_7__* (i32)* @packet_buffer_allocate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.TYPE_7__* @packet_buffer_allocate(i32 %0) #0 {
  %2 = alloca %struct.TYPE_7__*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.TYPE_7__*, align 8
  %5 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = sext i32 %6 to i64
  %8 = add i64 %7, 4
  %9 = trunc i64 %8 to i32
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i64, i64* @MHLEN, align 8
  %12 = trunc i64 %11 to i32
  %13 = icmp sgt i32 %10, %12
  br i1 %13, label %14, label %27

14:                                               ; preds = %1
  %15 = load i32, i32* %5, align 4
  %16 = load i32, i32* @MCLBYTES, align 4
  %17 = icmp sgt i32 %15, %16
  br i1 %17, label %18, label %22

18:                                               ; preds = %14
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @MCLBYTES, align 4
  %21 = call i32 @printf(i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20)
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %44

22:                                               ; preds = %14
  %23 = load i32, i32* @M_WAITOK, align 4
  %24 = load i32, i32* @MT_DATA, align 4
  %25 = load i32, i32* @M_PKTHDR, align 4
  %26 = call %struct.TYPE_7__* @m_getcl(i32 %23, i32 %24, i32 %25)
  store %struct.TYPE_7__* %26, %struct.TYPE_7__** %4, align 8
  br label %31

27:                                               ; preds = %1
  %28 = load i32, i32* @M_WAITOK, align 4
  %29 = load i32, i32* @MT_DATA, align 4
  %30 = call %struct.TYPE_7__* @m_gethdr(i32 %28, i32 %29)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %4, align 8
  br label %31

31:                                               ; preds = %27, %22
  %32 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %33 = icmp eq %struct.TYPE_7__* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %31
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %2, align 8
  br label %44

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  %37 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  store i32 %36, i32* %38, align 4
  %39 = load i32, i32* %5, align 4
  %40 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  %41 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %41, i32 0, i32 0
  store i32 %39, i32* %42, align 4
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %4, align 8
  store %struct.TYPE_7__* %43, %struct.TYPE_7__** %2, align 8
  br label %44

44:                                               ; preds = %35, %34, %18
  %45 = load %struct.TYPE_7__*, %struct.TYPE_7__** %2, align 8
  ret %struct.TYPE_7__* %45
}

declare dso_local i32 @printf(i8*, i32, i32) #1

declare dso_local %struct.TYPE_7__* @m_getcl(i32, i32, i32) #1

declare dso_local %struct.TYPE_7__* @m_gethdr(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
