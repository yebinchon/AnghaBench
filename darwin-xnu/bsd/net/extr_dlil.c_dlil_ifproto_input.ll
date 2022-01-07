; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_ifproto_input.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_dlil.c_dlil_ifproto_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.if_proto = type { i64, i32, i32, %struct.TYPE_14__ }
%struct.TYPE_14__ = type { %struct.TYPE_13__, %struct.TYPE_12__ }
%struct.TYPE_13__ = type { i32 (i32, i32, %struct.TYPE_15__*)* }
%struct.TYPE_12__ = type { i32 (i32, i32, %struct.TYPE_15__*, i8*)* }
%struct.TYPE_15__ = type { %struct.TYPE_11__, %struct.TYPE_15__* }
%struct.TYPE_11__ = type { i8* }

@kProtoKPI_v1 = common dso_local global i64 0, align 8
@EJUSTRETURN = common dso_local global i32 0, align 4
@kProtoKPI_v2 = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.if_proto*, %struct.TYPE_15__*)* @dlil_ifproto_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dlil_ifproto_input(%struct.if_proto* %0, %struct.TYPE_15__* %1) #0 {
  %3 = alloca %struct.if_proto*, align 8
  %4 = alloca %struct.TYPE_15__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca %struct.TYPE_15__*, align 8
  store %struct.if_proto* %0, %struct.if_proto** %3, align 8
  store %struct.TYPE_15__* %1, %struct.TYPE_15__** %4, align 8
  %8 = load %struct.if_proto*, %struct.if_proto** %3, align 8
  %9 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @kProtoKPI_v1, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %56

13:                                               ; preds = %2
  br label %14

14:                                               ; preds = %53, %13
  %15 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %16 = icmp ne %struct.TYPE_15__* %15, null
  br i1 %16, label %17, label %55

17:                                               ; preds = %14
  %18 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %18, i32 0, i32 1
  %20 = load %struct.TYPE_15__*, %struct.TYPE_15__** %19, align 8
  store %struct.TYPE_15__* %20, %struct.TYPE_15__** %7, align 8
  %21 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %22 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %21, i32 0, i32 1
  store %struct.TYPE_15__* null, %struct.TYPE_15__** %22, align 8
  %23 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %24 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %24, i32 0, i32 0
  %26 = load i8*, i8** %25, align 8
  store i8* %26, i8** %6, align 8
  %27 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %28 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %28, i32 0, i32 0
  store i8* null, i8** %29, align 8
  %30 = load %struct.if_proto*, %struct.if_proto** %3, align 8
  %31 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %30, i32 0, i32 3
  %32 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %32, i32 0, i32 0
  %34 = load i32 (i32, i32, %struct.TYPE_15__*, i8*)*, i32 (i32, i32, %struct.TYPE_15__*, i8*)** %33, align 8
  %35 = load %struct.if_proto*, %struct.if_proto** %3, align 8
  %36 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %35, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.if_proto*, %struct.if_proto** %3, align 8
  %39 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %42 = load i8*, i8** %6, align 8
  %43 = call i32 %34(i32 %37, i32 %40, %struct.TYPE_15__* %41, i8* %42)
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %53

46:                                               ; preds = %17
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @EJUSTRETURN, align 4
  %49 = icmp ne i32 %47, %48
  br i1 %49, label %50, label %53

50:                                               ; preds = %46
  %51 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %52 = call i32 @m_freem(%struct.TYPE_15__* %51)
  br label %53

53:                                               ; preds = %50, %46, %17
  %54 = load %struct.TYPE_15__*, %struct.TYPE_15__** %7, align 8
  store %struct.TYPE_15__* %54, %struct.TYPE_15__** %4, align 8
  br label %14

55:                                               ; preds = %14
  br label %87

56:                                               ; preds = %2
  %57 = load %struct.if_proto*, %struct.if_proto** %3, align 8
  %58 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %57, i32 0, i32 0
  %59 = load i64, i64* %58, align 8
  %60 = load i64, i64* @kProtoKPI_v2, align 8
  %61 = icmp eq i64 %59, %60
  br i1 %61, label %62, label %86

62:                                               ; preds = %56
  %63 = load %struct.if_proto*, %struct.if_proto** %3, align 8
  %64 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %63, i32 0, i32 3
  %65 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %65, i32 0, i32 0
  %67 = load i32 (i32, i32, %struct.TYPE_15__*)*, i32 (i32, i32, %struct.TYPE_15__*)** %66, align 8
  %68 = load %struct.if_proto*, %struct.if_proto** %3, align 8
  %69 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = load %struct.if_proto*, %struct.if_proto** %3, align 8
  %72 = getelementptr inbounds %struct.if_proto, %struct.if_proto* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 8
  %74 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %75 = call i32 %67(i32 %70, i32 %73, %struct.TYPE_15__* %74)
  store i32 %75, i32* %5, align 4
  %76 = load i32, i32* %5, align 4
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %85

78:                                               ; preds = %62
  %79 = load i32, i32* %5, align 4
  %80 = load i32, i32* @EJUSTRETURN, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %85

82:                                               ; preds = %78
  %83 = load %struct.TYPE_15__*, %struct.TYPE_15__** %4, align 8
  %84 = call i32 @m_freem_list(%struct.TYPE_15__* %83)
  br label %85

85:                                               ; preds = %82, %78, %62
  br label %86

86:                                               ; preds = %85, %56
  br label %87

87:                                               ; preds = %86, %55
  ret void
}

declare dso_local i32 @m_freem(%struct.TYPE_15__*) #1

declare dso_local i32 @m_freem_list(%struct.TYPE_15__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
