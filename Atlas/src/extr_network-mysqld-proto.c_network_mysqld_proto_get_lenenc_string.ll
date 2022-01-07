; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_get_lenenc_string.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_get_lenenc_string.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@G_STRLOC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_get_lenenc_string(%struct.TYPE_6__* %0, i32** %1, i64* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca i32**, align 8
  %7 = alloca i64*, align 8
  %8 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %5, align 8
  store i32** %1, i32*** %6, align 8
  store i64* %2, i64** %7, align 8
  %9 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %10 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %13 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp sge i64 %11, %16
  br i1 %17, label %18, label %25

18:                                               ; preds = %3
  %19 = load i32, i32* @G_STRLOC, align 4
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  %22 = load %struct.TYPE_7__*, %struct.TYPE_7__** %21, align 8
  %23 = call i32 @S(%struct.TYPE_7__* %22)
  %24 = call i32 @g_debug_hexdump(i32 %19, i32 %23)
  store i32 -1, i32* %4, align 4
  br label %65

25:                                               ; preds = %3
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 1
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp sge i64 %28, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %25
  store i32 -1, i32* %4, align 4
  br label %65

36:                                               ; preds = %25
  %37 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %38 = call i64 @network_mysqld_proto_get_lenenc_int(%struct.TYPE_6__* %37, i64* %8)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %36
  store i32 -1, i32* %4, align 4
  br label %65

41:                                               ; preds = %36
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* %8, align 8
  %46 = add nsw i64 %44, %45
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  %49 = load %struct.TYPE_7__*, %struct.TYPE_7__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = icmp sgt i64 %46, %51
  br i1 %52, label %53, label %54

53:                                               ; preds = %41
  store i32 -1, i32* %4, align 4
  br label %65

54:                                               ; preds = %41
  %55 = load i64*, i64** %7, align 8
  %56 = icmp ne i64* %55, null
  br i1 %56, label %57, label %60

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = load i64*, i64** %7, align 8
  store i64 %58, i64* %59, align 8
  br label %60

60:                                               ; preds = %57, %54
  %61 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %62 = load i32**, i32*** %6, align 8
  %63 = load i64, i64* %8, align 8
  %64 = call i32 @network_mysqld_proto_get_string_len(%struct.TYPE_6__* %61, i32** %62, i64 %63)
  store i32 %64, i32* %4, align 4
  br label %65

65:                                               ; preds = %60, %53, %40, %35, %18
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @g_debug_hexdump(i32, i32) #1

declare dso_local i32 @S(%struct.TYPE_7__*) #1

declare dso_local i64 @network_mysqld_proto_get_lenenc_int(%struct.TYPE_6__*, i64*) #1

declare dso_local i32 @network_mysqld_proto_get_string_len(%struct.TYPE_6__*, i32**, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
