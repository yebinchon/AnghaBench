; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_BuildDnsResponsePacketPtr.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_BuildDnsResponsePacketPtr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i32* }

@NAT_DNS_RESPONSE_TTL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @BuildDnsResponsePacketPtr(%struct.TYPE_6__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_6__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_6__*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %3, align 8
  store i8* %1, i8** %4, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %12 = icmp eq %struct.TYPE_6__* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = icmp eq i8* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13, %2
  br label %53

17:                                               ; preds = %13
  %18 = call i32 @Endian16(i32 49164)
  store i32 %18, i32* %5, align 4
  %19 = call i32 @Endian16(i32 12)
  store i32 %19, i32* %6, align 4
  %20 = call i32 @Endian16(i32 1)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* @NAT_DNS_RESPONSE_TTL, align 4
  %22 = call i32 @Endian32(i32 %21)
  store i32 %22, i32* %8, align 4
  %23 = load i8*, i8** %4, align 8
  %24 = call %struct.TYPE_6__* @BuildDnsHostName(i8* %23)
  store %struct.TYPE_6__* %24, %struct.TYPE_6__** %10, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %26 = icmp eq %struct.TYPE_6__* %25, null
  br i1 %26, label %27, label %28

27:                                               ; preds = %17
  br label %53

28:                                               ; preds = %17
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @Endian16(i32 %31)
  store i32 %32, i32* %9, align 4
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %34 = call i32 @WriteBuf(%struct.TYPE_6__* %33, i32* %5, i32 2)
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %36 = call i32 @WriteBuf(%struct.TYPE_6__* %35, i32* %6, i32 2)
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %38 = call i32 @WriteBuf(%struct.TYPE_6__* %37, i32* %7, i32 2)
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %40 = call i32 @WriteBuf(%struct.TYPE_6__* %39, i32* %8, i32 4)
  %41 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %42 = call i32 @WriteBuf(%struct.TYPE_6__* %41, i32* %9, i32 2)
  %43 = load %struct.TYPE_6__*, %struct.TYPE_6__** %3, align 8
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @WriteBuf(%struct.TYPE_6__* %43, i32* %46, i32 %49)
  %51 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %52 = call i32 @FreeBuf(%struct.TYPE_6__* %51)
  br label %53

53:                                               ; preds = %28, %27, %16
  ret void
}

declare dso_local i32 @Endian16(i32) #1

declare dso_local i32 @Endian32(i32) #1

declare dso_local %struct.TYPE_6__* @BuildDnsHostName(i8*) #1

declare dso_local i32 @WriteBuf(%struct.TYPE_6__*, i32*, i32) #1

declare dso_local i32 @FreeBuf(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
