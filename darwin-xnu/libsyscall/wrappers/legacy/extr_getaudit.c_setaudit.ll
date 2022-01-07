; ModuleID = '/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/legacy/extr_getaudit.c_setaudit.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/libsyscall/wrappers/legacy/extr_getaudit.c_setaudit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auditinfo = type { i32, %struct.TYPE_7__, i32, i32 }
%struct.TYPE_7__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32*, i32, i32 }

@AU_IPv4 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @setaudit(%struct.auditinfo* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.auditinfo*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.auditinfo*, align 8
  %6 = alloca %struct.TYPE_8__, align 8
  store %struct.auditinfo* %0, %struct.auditinfo** %3, align 8
  %7 = load %struct.auditinfo*, %struct.auditinfo** %3, align 8
  store %struct.auditinfo* %7, %struct.auditinfo** %5, align 8
  %8 = call i32 @getaudit_addr(%struct.TYPE_8__* %6, i32 32)
  store i32 %8, i32* %4, align 4
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %12

10:                                               ; preds = %1
  %11 = load i32, i32* %4, align 4
  store i32 %11, i32* %2, align 4
  br label %51

12:                                               ; preds = %1
  %13 = load %struct.auditinfo*, %struct.auditinfo** %5, align 8
  %14 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %13, i32 0, i32 3
  %15 = load i32, i32* %14, align 4
  %16 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 3
  store i32 %15, i32* %16, align 4
  %17 = load %struct.auditinfo*, %struct.auditinfo** %5, align 8
  %18 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 2
  store i32 %19, i32* %20, align 8
  %21 = load %struct.auditinfo*, %struct.auditinfo** %5, align 8
  %22 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 4
  %27 = load i32, i32* @AU_IPv4, align 4
  %28 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 1
  store i32 %27, i32* %29, align 8
  %30 = load %struct.auditinfo*, %struct.auditinfo** %5, align 8
  %31 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %34, i32 0, i32 0
  %36 = load i32*, i32** %35, align 8
  %37 = getelementptr inbounds i32, i32* %36, i64 0
  store i32 %33, i32* %37, align 4
  %38 = load %struct.auditinfo*, %struct.auditinfo** %5, align 8
  %39 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  store i32 %40, i32* %41, align 8
  %42 = call i32 @setaudit_addr(%struct.TYPE_8__* %6, i32 32)
  store i32 %42, i32* %4, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %12
  %45 = load i32, i32* %4, align 4
  store i32 %45, i32* %2, align 4
  br label %51

46:                                               ; preds = %12
  %47 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %6, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.auditinfo*, %struct.auditinfo** %5, align 8
  %50 = getelementptr inbounds %struct.auditinfo, %struct.auditinfo* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  store i32 0, i32* %2, align 4
  br label %51

51:                                               ; preds = %46, %44, %10
  %52 = load i32, i32* %2, align 4
  ret i32 %52
}

declare dso_local i32 @getaudit_addr(%struct.TYPE_8__*, i32) #1

declare dso_local i32 @setaudit_addr(%struct.TYPE_8__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
