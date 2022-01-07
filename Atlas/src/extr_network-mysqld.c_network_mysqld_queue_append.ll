; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_queue_append.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_queue_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, i64 }

@PACKET_LEN_MAX = common dso_local global i64 0, align 8
@FALSE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_queue_append(%struct.TYPE_3__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca %struct.TYPE_3__*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %5, align 8
  store i32* %1, i32** %6, align 8
  store i8* %2, i8** %7, align 8
  store i64 %3, i64* %8, align 8
  store i32 0, i32* %9, align 4
  br label %12

12:                                               ; preds = %74, %4
  %13 = load i64, i64* %8, align 8
  %14 = load i64, i64* @PACKET_LEN_MAX, align 8
  %15 = call i32 @MIN(i64 %13, i64 %14)
  store i32 %15, i32* %11, align 4
  %16 = load i64, i64* %8, align 8
  %17 = add i64 %16, 4
  %18 = trunc i64 %17 to i32
  %19 = call i32* @g_string_sized_new(i32 %18)
  store i32* %19, i32** %10, align 8
  %20 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 1
  %22 = load i64, i64* %21, align 8
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %12
  %25 = load i64, i64* @FALSE, align 8
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 1
  store i64 %25, i64* %27, align 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 255, i32* %29, align 8
  br label %30

30:                                               ; preds = %24, %12
  %31 = load i32*, i32** %10, align 8
  %32 = load i32, i32* %11, align 4
  %33 = call i32 @network_mysqld_proto_append_packet_len(i32* %31, i32 %32)
  %34 = load i32*, i32** %10, align 8
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* %36, align 8
  %39 = call i32 @network_mysqld_proto_append_packet_id(i32* %34, i32 %38)
  %40 = load i32*, i32** %10, align 8
  %41 = load i8*, i8** %7, align 8
  %42 = load i32, i32* %9, align 4
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds i8, i8* %41, i64 %43
  %45 = load i32, i32* %11, align 4
  %46 = call i32 @g_string_append_len(i32* %40, i8* %44, i32 %45)
  %47 = load i32*, i32** %6, align 8
  %48 = load i32*, i32** %10, align 8
  %49 = call i32 @network_queue_append(i32* %47, i32* %48)
  %50 = load i64, i64* %8, align 8
  %51 = load i64, i64* @PACKET_LEN_MAX, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %66

53:                                               ; preds = %30
  %54 = call i32* @g_string_sized_new(i32 4)
  store i32* %54, i32** %10, align 8
  %55 = load i32*, i32** %10, align 8
  %56 = call i32 @network_mysqld_proto_append_packet_len(i32* %55, i32 0)
  %57 = load i32*, i32** %10, align 8
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = add nsw i32 %60, 1
  store i32 %61, i32* %59, align 8
  %62 = call i32 @network_mysqld_proto_append_packet_id(i32* %57, i32 %61)
  %63 = load i32*, i32** %6, align 8
  %64 = load i32*, i32** %10, align 8
  %65 = call i32 @network_queue_append(i32* %63, i32* %64)
  br label %66

66:                                               ; preds = %53, %30
  %67 = load i32, i32* %11, align 4
  %68 = sext i32 %67 to i64
  %69 = load i64, i64* %8, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %8, align 8
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* %9, align 4
  %73 = add nsw i32 %72, %71
  store i32 %73, i32* %9, align 4
  br label %74

74:                                               ; preds = %66
  %75 = load i64, i64* %8, align 8
  %76 = icmp ugt i64 %75, 0
  br i1 %76, label %12, label %77

77:                                               ; preds = %74
  ret i32 0
}

declare dso_local i32 @MIN(i64, i64) #1

declare dso_local i32* @g_string_sized_new(i32) #1

declare dso_local i32 @network_mysqld_proto_append_packet_len(i32*, i32) #1

declare dso_local i32 @network_mysqld_proto_append_packet_id(i32*, i32) #1

declare dso_local i32 @g_string_append_len(i32*, i8*, i32) #1

declare dso_local i32 @network_queue_append(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
