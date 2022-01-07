; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/legacy/extr_getaudit.c_getaudit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/legacy/extr_getaudit.c_getaudit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditinfo = type { i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @getaudit(%struct.auditinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.auditinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_7__, align 8
  store %struct.auditinfo* %0, %struct.auditinfo** %3, align 8
  %6 = call i32 @getaudit_addr(%struct.TYPE_7__* %5, i32 32)
  store i32 %6, i32* %4, align 4
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %8, label %10

8:                                                ; preds = %1
  %9 = load i32, i32* %4, align 4
  store i32 %9, i32* %2, align 4
  br label %37

10:                                               ; preds = %1
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 3
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.auditinfo*, %struct.auditinfo** %3, align 8
  %14 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = load %struct.auditinfo*, %struct.auditinfo** %3, align 8
  %18 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %17, i32 0, i32 2
  store i32 %16, i32* %18, align 4
  %19 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.auditinfo*, %struct.auditinfo** %3, align 8
  %23 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %22, i32 0, i32 1
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  store i32 %21, i32* %24, align 4
  %25 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 0
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.auditinfo*, %struct.auditinfo** %3, align 8
  %31 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 4
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %5, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.auditinfo*, %struct.auditinfo** %3, align 8
  %36 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 4
  store i32 0, i32* %2, align 4
  br label %37

37:                                               ; preds = %10, %8
  %38 = load i32, i32* %2, align 4
  ret i32 %38
}

declare dso_local i32 @getaudit_addr(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
