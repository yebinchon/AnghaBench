; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_next_binary_row.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-packet.c_network_mysqld_proto_get_next_binary_row.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_9__ = type { %struct.TYPE_9__*, i32 }
%struct.TYPE_8__ = type { i64, i32 }

@NETWORK_MYSQLD_LENENC_TYPE_EOF = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.TYPE_9__* @network_mysqld_proto_get_next_binary_row(%struct.TYPE_9__* %0, i32* %1, i32* %2) #0 {
  %4 = alloca %struct.TYPE_9__*, align 8
  %5 = alloca %struct.TYPE_9__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.TYPE_8__, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.TYPE_9__* %0, %struct.TYPE_9__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 1
  store i32 %13, i32* %14, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %8, i32 0, i32 0
  store i64 0, i64* %15, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %3
  %19 = call i64 @network_mysqld_proto_skip_network_header(%struct.TYPE_8__* %8)
  %20 = icmp ne i64 %19, 0
  br label %21

21:                                               ; preds = %18, %3
  %22 = phi i1 [ true, %3 ], [ %20, %18 ]
  %23 = zext i1 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = call i64 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_8__* %8, i64* %10)
  %28 = icmp ne i64 %27, 0
  br label %29

29:                                               ; preds = %26, %21
  %30 = phi i1 [ true, %21 ], [ %28, %26 ]
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 0, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %60

35:                                               ; preds = %29
  %36 = load i64, i64* @NETWORK_MYSQLD_LENENC_TYPE_EOF, align 8
  %37 = load i64, i64* %10, align 8
  %38 = icmp eq i64 %36, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  store %struct.TYPE_9__* null, %struct.TYPE_9__** %4, align 8
  br label %60

40:                                               ; preds = %35
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %48, label %43

43:                                               ; preds = %40
  %44 = load i32*, i32** %6, align 8
  %45 = load i32*, i32** %7, align 8
  %46 = call i64 @network_mysqld_proto_get_binary_row(%struct.TYPE_8__* %8, i32* %44, i32* %45)
  %47 = icmp ne i64 %46, 0
  br label %48

48:                                               ; preds = %43, %40
  %49 = phi i1 [ true, %40 ], [ %47, %43 ]
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %9, align 4
  %51 = load i32, i32* %9, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %48
  br label %58

54:                                               ; preds = %48
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %5, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load %struct.TYPE_9__*, %struct.TYPE_9__** %56, align 8
  br label %58

58:                                               ; preds = %54, %53
  %59 = phi %struct.TYPE_9__* [ null, %53 ], [ %57, %54 ]
  store %struct.TYPE_9__* %59, %struct.TYPE_9__** %4, align 8
  br label %60

60:                                               ; preds = %58, %39, %34
  %61 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  ret %struct.TYPE_9__* %61
}

declare dso_local i64 @network_mysqld_proto_skip_network_header(%struct.TYPE_8__*) #1

declare dso_local i64 @network_mysqld_proto_peek_lenenc_type(%struct.TYPE_8__*, i64*) #1

declare dso_local i64 @network_mysqld_proto_get_binary_row(%struct.TYPE_8__*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
