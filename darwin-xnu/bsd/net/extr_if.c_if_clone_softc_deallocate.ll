; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_clone_softc_deallocate.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_if.c_if_clone_softc_deallocate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_clone = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @if_clone_softc_deallocate(%struct.if_clone* %0, i8* %1) #0 {
  %3 = alloca %struct.if_clone*, align 8
  %4 = alloca i8*, align 8
  store %struct.if_clone* %0, %struct.if_clone** %3, align 8
  store i8* %1, i8** %4, align 8
  %5 = load %struct.if_clone*, %struct.if_clone** %3, align 8
  %6 = icmp ne %struct.if_clone* %5, null
  br i1 %6, label %7, label %10

7:                                                ; preds = %2
  %8 = load i8*, i8** %4, align 8
  %9 = icmp ne i8* %8, null
  br label %10

10:                                               ; preds = %7, %2
  %11 = phi i1 [ false, %2 ], [ %9, %7 ]
  %12 = zext i1 %11 to i32
  %13 = call i32 @VERIFY(i32 %12)
  %14 = load i8*, i8** %4, align 8
  %15 = load %struct.if_clone*, %struct.if_clone** %3, align 8
  %16 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @bzero(i8* %14, i32 %17)
  %19 = load %struct.if_clone*, %struct.if_clone** %3, align 8
  %20 = getelementptr inbounds %struct.if_clone, %struct.if_clone* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i8*, i8** %4, align 8
  %23 = call i32 @zfree(i32 %21, i8* %22)
  ret void
}

declare dso_local i32 @VERIFY(i32) #1

declare dso_local i32 @bzero(i8*, i32) #1

declare dso_local i32 @zfree(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
