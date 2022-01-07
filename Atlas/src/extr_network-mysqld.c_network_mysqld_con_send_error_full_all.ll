; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_con_send_error_full_all.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld.c_network_mysqld_con_send_error_full_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { i32 }
%struct.TYPE_11__ = type { i32, i32, i32 }

@TRUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_10__*, i8*, i32, i32, i8*, i64)* @network_mysqld_con_send_error_full_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @network_mysqld_con_send_error_full_all(%struct.TYPE_10__* %0, i8* %1, i32 %2, i32 %3, i8* %4, i64 %5) #0 {
  %7 = alloca %struct.TYPE_10__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca %struct.TYPE_11__*, align 8
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i8* %4, i8** %11, align 8
  store i64 %5, i64* %12, align 8
  %15 = load i32, i32* %9, align 4
  %16 = add nsw i32 10, %15
  %17 = call i32* @g_string_sized_new(i32 %16)
  store i32* %17, i32** %13, align 8
  %18 = load i64, i64* %12, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %6
  %21 = call %struct.TYPE_11__* (...) @network_mysqld_err_packet_new()
  br label %24

22:                                               ; preds = %6
  %23 = call %struct.TYPE_11__* (...) @network_mysqld_err_packet_new_pre41()
  br label %24

24:                                               ; preds = %22, %20
  %25 = phi %struct.TYPE_11__* [ %21, %20 ], [ %23, %22 ]
  store %struct.TYPE_11__* %25, %struct.TYPE_11__** %14, align 8
  %26 = load i32, i32* %10, align 4
  %27 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 4
  %29 = load i8*, i8** %8, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = load i8*, i8** %8, align 8
  %36 = load i32, i32* %9, align 4
  %37 = call i32 @g_string_assign_len(i32 %34, i8* %35, i32 %36)
  br label %38

38:                                               ; preds = %31, %24
  %39 = load i8*, i8** %11, align 8
  %40 = icmp ne i8* %39, null
  br i1 %40, label %41, label %49

41:                                               ; preds = %38
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %11, align 8
  %46 = load i8*, i8** %11, align 8
  %47 = call i32 @strlen(i8* %46)
  %48 = call i32 @g_string_assign_len(i32 %44, i8* %45, i32 %47)
  br label %49

49:                                               ; preds = %41, %38
  %50 = load i32*, i32** %13, align 8
  %51 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %52 = call i32 @network_mysqld_proto_append_err_packet(i32* %50, %struct.TYPE_11__* %51)
  %53 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %54 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %55 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %13, align 8
  %58 = call i32 @S(i32* %57)
  %59 = call i32 @network_mysqld_queue_append(%struct.TYPE_10__* %53, i32 %56, i32 %58)
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %7, align 8
  %61 = call i32 @network_mysqld_queue_reset(%struct.TYPE_10__* %60)
  %62 = load %struct.TYPE_11__*, %struct.TYPE_11__** %14, align 8
  %63 = call i32 @network_mysqld_err_packet_free(%struct.TYPE_11__* %62)
  %64 = load i32*, i32** %13, align 8
  %65 = load i32, i32* @TRUE, align 4
  %66 = call i32 @g_string_free(i32* %64, i32 %65)
  ret i32 0
}

declare dso_local i32* @g_string_sized_new(i32) #1

declare dso_local %struct.TYPE_11__* @network_mysqld_err_packet_new(...) #1

declare dso_local %struct.TYPE_11__* @network_mysqld_err_packet_new_pre41(...) #1

declare dso_local i32 @g_string_assign_len(i32, i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @network_mysqld_proto_append_err_packet(i32*, %struct.TYPE_11__*) #1

declare dso_local i32 @network_mysqld_queue_append(%struct.TYPE_10__*, i32, i32) #1

declare dso_local i32 @S(i32*) #1

declare dso_local i32 @network_mysqld_queue_reset(%struct.TYPE_10__*) #1

declare dso_local i32 @network_mysqld_err_packet_free(%struct.TYPE_11__*) #1

declare dso_local i32 @g_string_free(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
