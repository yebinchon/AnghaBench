; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildIPv6.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Mayaqua/extr_TcpIp.c_BuildIPv6.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i8*, %struct.TYPE_6__*, i32, i32, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32* @BuildIPv6(i32* %0, i32* %1, i32 %2, i8* %3, i8* %4, i8* %5, i32 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_6__, align 8
  %17 = alloca %struct.TYPE_6__, align 8
  %18 = alloca i32*, align 8
  %19 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store i32* %1, i32** %10, align 8
  store i32 %2, i32* %11, align 4
  store i8* %3, i8** %12, align 8
  store i8* %4, i8** %13, align 8
  store i8* %5, i8** %14, align 8
  store i32 %6, i32* %15, align 4
  %20 = load i32*, i32** %9, align 8
  %21 = icmp eq i32* %20, null
  br i1 %21, label %28, label %22

22:                                               ; preds = %7
  %23 = load i32*, i32** %10, align 8
  %24 = icmp eq i32* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %22
  %26 = load i8*, i8** %14, align 8
  %27 = icmp eq i8* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %25, %22, %7
  store i32* null, i32** %8, align 8
  br label %58

29:                                               ; preds = %25
  %30 = load i8*, i8** %13, align 8
  %31 = icmp eq i8* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %29
  store i8* inttoptr (i64 255 to i8*), i8** %13, align 8
  br label %33

33:                                               ; preds = %32, %29
  %34 = call i32 @Zero(%struct.TYPE_6__* %17, i32 48)
  %35 = call i32 @IPV6_SET_VERSION(%struct.TYPE_6__* %17, i32 6)
  %36 = load i8*, i8** %13, align 8
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 6
  store i8* %36, i8** %37, align 8
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 5
  %39 = load i32*, i32** %10, align 8
  %40 = call i32 @Copy(i32* %38, i32* %39, i32 4)
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 4
  %42 = load i32*, i32** %9, align 8
  %43 = call i32 @Copy(i32* %41, i32* %42, i32 4)
  %44 = call i32 @Zero(%struct.TYPE_6__* %16, i32 48)
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 3
  store %struct.TYPE_6__* %17, %struct.TYPE_6__** %45, align 8
  %46 = load i8*, i8** %12, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 2
  store i8* %46, i8** %47, align 8
  %48 = load i8*, i8** %14, align 8
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 1
  store i8* %48, i8** %49, align 8
  %50 = load i32, i32* %15, align 4
  %51 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %16, i32 0, i32 0
  store i32 %50, i32* %51, align 8
  %52 = call i32* @BuildIPv6PacketHeader(%struct.TYPE_6__* %16, i32* %19)
  store i32* %52, i32** %18, align 8
  %53 = load i32*, i32** %18, align 8
  %54 = icmp eq i32* %53, null
  br i1 %54, label %55, label %56

55:                                               ; preds = %33
  store i32* null, i32** %8, align 8
  br label %58

56:                                               ; preds = %33
  %57 = load i32*, i32** %18, align 8
  store i32* %57, i32** %8, align 8
  br label %58

58:                                               ; preds = %56, %55, %28
  %59 = load i32*, i32** %8, align 8
  ret i32* %59
}

declare dso_local i32 @Zero(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @IPV6_SET_VERSION(%struct.TYPE_6__*, i32) #1

declare dso_local i32 @Copy(i32*, i32*, i32) #1

declare dso_local i32* @BuildIPv6PacketHeader(%struct.TYPE_6__*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
