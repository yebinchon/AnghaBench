; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ConnectThreadForOverDnsOrIcmp.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_Network.c_ConnectThreadForOverDnsOrIcmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32, i64, i32, i32, i32, i32, i32*, i32, i32, i32, i32, i32 }

@RUDP_PROTOCOL_DNS = common dso_local global i64 0, align 8
@IP_PROTO_ICMPV4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ConnectThreadForOverDnsOrIcmp(i32* %0, i8* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.TYPE_2__*, align 8
  store i32* %0, i32** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = bitcast i8* %7 to %struct.TYPE_2__*
  store %struct.TYPE_2__* %8, %struct.TYPE_2__** %6, align 8
  %9 = load i32*, i32** %3, align 8
  %10 = icmp eq i32* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %13 = icmp eq %struct.TYPE_2__* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %11, %2
  br label %92

15:                                               ; preds = %11
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp sge i32 %18, 1
  br i1 %19, label %20, label %28

20:                                               ; preds = %15
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 7
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @WaitEx(i32* null, i32 %23, i32 %26)
  br label %28

28:                                               ; preds = %20, %15
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 11
  %31 = load i32, i32* %30, align 8
  %32 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 10
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %28
  br label %43

40:                                               ; preds = %28
  %41 = load i32, i32* @IP_PROTO_ICMPV4, align 4
  %42 = call i32 @MAKE_SPECIAL_PORT(i32 %41)
  br label %43

43:                                               ; preds = %40, %39
  %44 = phi i32 [ 53, %39 ], [ %42, %40 ]
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 9
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 8
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %51 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %50, i32 0, i32 7
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %59

58:                                               ; preds = %43
  br label %62

59:                                               ; preds = %43
  %60 = load i32, i32* @IP_PROTO_ICMPV4, align 4
  %61 = call i32 @MAKE_SPECIAL_PORT(i32 %60)
  br label %62

62:                                               ; preds = %59, %58
  %63 = phi i32 [ 0, %58 ], [ %61, %59 ]
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = load i64, i64* @RUDP_PROTOCOL_DNS, align 8
  %68 = icmp eq i64 %66, %67
  %69 = zext i1 %68 to i64
  %70 = select i1 %68, i32 1, i32 0
  %71 = call i32* @NewRUDPClientDirect(i32 %31, i32* %33, i32 %44, i32* %46, i32 %49, i32 %52, i32* null, i32* null, i32 %63, i32 %70)
  store i32* %71, i32** %5, align 8
  %72 = load i32*, i32** %5, align 8
  %73 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 6
  store i32* %72, i32** %74, align 8
  %75 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 6
  %77 = load i32*, i32** %76, align 8
  %78 = icmp eq i32* %77, null
  %79 = zext i1 %78 to i64
  %80 = select i1 %78, i32 0, i32 1
  %81 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %82 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %81, i32 0, i32 2
  store i32 %80, i32* %82, align 8
  %83 = call i32 (...) @Tick64()
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 5
  store i32 %83, i32* %85, align 4
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 3
  store i32 1, i32* %87, align 4
  %88 = load %struct.TYPE_2__*, %struct.TYPE_2__** %6, align 8
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 4
  %90 = load i32, i32* %89, align 8
  %91 = call i32 @Set(i32 %90)
  br label %92

92:                                               ; preds = %62, %14
  ret void
}

declare dso_local i32 @WaitEx(i32*, i32, i32) #1

declare dso_local i32* @NewRUDPClientDirect(i32, i32*, i32, i32*, i32, i32, i32*, i32*, i32, i32) #1

declare dso_local i32 @MAKE_SPECIAL_PORT(i32) #1

declare dso_local i32 @Tick64(...) #1

declare dso_local i32 @Set(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
