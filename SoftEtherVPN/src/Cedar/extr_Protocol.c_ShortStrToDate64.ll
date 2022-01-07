; ModuleID = '/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ShortStrToDate64.c'
source_filename = "/home/carl/AnghaBench/SoftEtherVPN/src/Cedar/extr_Protocol.c_ShortStrToDate64.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ShortStrToDate64(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_4__, align 4
  store i8* %0, i8** %3, align 8
  %6 = load i8*, i8** %3, align 8
  %7 = icmp eq i8* %6, null
  br i1 %7, label %8, label %9

8:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %25

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i32 @ToInt(i8* %10)
  store i32 %11, i32* %4, align 4
  %12 = call i32 @Zero(%struct.TYPE_4__* %5, i32 12)
  %13 = load i32, i32* %4, align 4
  %14 = srem i32 %13, 100000000
  %15 = sdiv i32 %14, 10000
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 0
  store i32 %15, i32* %16, align 4
  %17 = load i32, i32* %4, align 4
  %18 = srem i32 %17, 10000
  %19 = sdiv i32 %18, 100
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 1
  store i32 %19, i32* %20, align 4
  %21 = load i32, i32* %4, align 4
  %22 = srem i32 %21, 100
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %5, i32 0, i32 2
  store i32 %22, i32* %23, align 4
  %24 = call i32 @SystemToUINT64(%struct.TYPE_4__* %5)
  store i32 %24, i32* %2, align 4
  br label %25

25:                                               ; preds = %9, %8
  %26 = load i32, i32* %2, align 4
  ret i32 %26
}

declare dso_local i32 @ToInt(i8*) #1

declare dso_local i32 @Zero(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @SystemToUINT64(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
