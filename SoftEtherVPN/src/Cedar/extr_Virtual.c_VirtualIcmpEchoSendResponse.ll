; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualIcmpEchoSendResponse.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Virtual.c_VirtualIcmpEchoSendResponse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @VirtualIcmpEchoSendResponse(i32* %0, i64 %1, i64 %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca %struct.TYPE_5__*, align 8
  store i32* %0, i32** %8, align 8
  store i64 %1, i64* %9, align 8
  store i64 %2, i64* %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i64 %6, i64* %14, align 8
  %16 = load i32*, i32** %8, align 8
  %17 = icmp eq i32* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %7
  %19 = load i8*, i8** %13, align 8
  %20 = icmp eq i8* %19, null
  br i1 %20, label %21, label %22

21:                                               ; preds = %18, %7
  br label %49

22:                                               ; preds = %18
  %23 = load i64, i64* %14, align 8
  %24 = add i64 16, %23
  %25 = call %struct.TYPE_5__* @ZeroMalloc(i64 %24)
  store %struct.TYPE_5__* %25, %struct.TYPE_5__** %15, align 8
  %26 = load i32, i32* %11, align 4
  %27 = call i8* @Endian16(i32 %26)
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i8* %27, i8** %29, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call i8* @Endian16(i32 %30)
  %32 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  store i8* %31, i8** %33, align 8
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %35 = bitcast %struct.TYPE_5__* %34 to i32*
  %36 = getelementptr inbounds i32, i32* %35, i64 16
  %37 = load i8*, i8** %13, align 8
  %38 = load i64, i64* %14, align 8
  %39 = call i32 @Copy(i32* %36, i8* %37, i64 %38)
  %40 = load i32*, i32** %8, align 8
  %41 = load i64, i64* %9, align 8
  %42 = load i64, i64* %10, align 8
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %44 = load i64, i64* %14, align 8
  %45 = add i64 16, %44
  %46 = call i32 @VirtualIcmpSend(i32* %40, i64 %41, i64 %42, %struct.TYPE_5__* %43, i64 %45)
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %48 = call i32 @Free(%struct.TYPE_5__* %47)
  br label %49

49:                                               ; preds = %22, %21
  ret void
}

declare dso_local %struct.TYPE_5__* @ZeroMalloc(i64) #1

declare dso_local i8* @Endian16(i32) #1

declare dso_local i32 @Copy(i32*, i8*, i64) #1

declare dso_local i32 @VirtualIcmpSend(i32*, i64, i64, %struct.TYPE_5__*, i64) #1

declare dso_local i32 @Free(%struct.TYPE_5__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
