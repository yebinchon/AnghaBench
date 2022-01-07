; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_password_unscramble.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_password_unscramble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32*, i32, i32 }

@FALSE = common dso_local global i32 0, align 4
@G_CHECKSUM_SHA1 = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_password_unscramble(%struct.TYPE_4__* %0, i8* %1, i32 %2, i8* %3, i32 %4, i8* %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_4__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  store %struct.TYPE_4__* %0, %struct.TYPE_4__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i32 %2, i32* %10, align 4
  store i8* %3, i8** %11, align 8
  store i32 %4, i32* %12, align 4
  store i8* %5, i8** %13, align 8
  store i32 %6, i32* %14, align 4
  %17 = load i8*, i8** %11, align 8
  %18 = icmp ne i8* null, %17
  %19 = zext i1 %18 to i32
  %20 = load i32, i32* @FALSE, align 4
  %21 = call i32 @g_return_val_if_fail(i32 %19, i32 %20)
  %22 = load i32, i32* %12, align 4
  %23 = icmp eq i32 20, %22
  %24 = zext i1 %23 to i32
  %25 = load i32, i32* @FALSE, align 4
  %26 = call i32 @g_return_val_if_fail(i32 %24, i32 %25)
  %27 = load i8*, i8** %9, align 8
  %28 = icmp ne i8* null, %27
  %29 = zext i1 %28 to i32
  %30 = load i32, i32* @FALSE, align 4
  %31 = call i32 @g_return_val_if_fail(i32 %29, i32 %30)
  %32 = load i32, i32* %10, align 4
  %33 = icmp eq i32 20, %32
  %34 = zext i1 %33 to i32
  %35 = load i32, i32* @FALSE, align 4
  %36 = call i32 @g_return_val_if_fail(i32 %34, i32 %35)
  %37 = load i8*, i8** %13, align 8
  %38 = icmp ne i8* null, %37
  %39 = zext i1 %38 to i32
  %40 = load i32, i32* @FALSE, align 4
  %41 = call i32 @g_return_val_if_fail(i32 %39, i32 %40)
  %42 = load i32, i32* %14, align 4
  %43 = icmp eq i32 20, %42
  %44 = zext i1 %43 to i32
  %45 = load i32, i32* @FALSE, align 4
  %46 = call i32 @g_return_val_if_fail(i32 %44, i32 %45)
  %47 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %48 = call i32* @g_checksum_new(i32 %47)
  store i32* %48, i32** %16, align 8
  %49 = load i32*, i32** %16, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = bitcast i8* %50 to i32*
  %52 = load i32, i32* %10, align 4
  %53 = call i32 @g_checksum_update(i32* %49, i32* %51, i32 %52)
  %54 = load i32*, i32** %16, align 8
  %55 = load i8*, i8** %13, align 8
  %56 = bitcast i8* %55 to i32*
  %57 = load i32, i32* %14, align 4
  %58 = call i32 @g_checksum_update(i32* %54, i32* %56, i32 %57)
  %59 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %60 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %61 = call i32 @g_checksum_type_get_length(i32 %60)
  %62 = call i32 @g_string_set_size(%struct.TYPE_4__* %59, i32 %61)
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load i32*, i32** %16, align 8
  %69 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %70 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %73 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %72, i32 0, i32 1
  %74 = call i32 @g_checksum_get_digest(i32* %68, i32* %71, i32* %73)
  %75 = load i32*, i32** %16, align 8
  %76 = call i32 @g_checksum_free(i32* %75)
  store i32 0, i32* %15, align 4
  br label %77

77:                                               ; preds = %101, %7
  %78 = load i32, i32* %15, align 4
  %79 = icmp slt i32 %78, 20
  br i1 %79, label %80, label %104

80:                                               ; preds = %77
  %81 = load i8*, i8** %11, align 8
  %82 = load i32, i32* %15, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds i8, i8* %81, i64 %83
  %85 = load i8, i8* %84, align 1
  %86 = sext i8 %85 to i32
  %87 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %88 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %87, i32 0, i32 0
  %89 = load i32*, i32** %88, align 8
  %90 = load i32, i32* %15, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds i32, i32* %89, i64 %91
  %93 = load i32, i32* %92, align 4
  %94 = xor i32 %86, %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %8, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i32*, i32** %96, align 8
  %98 = load i32, i32* %15, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds i32, i32* %97, i64 %99
  store i32 %94, i32* %100, align 4
  br label %101

101:                                              ; preds = %80
  %102 = load i32, i32* %15, align 4
  %103 = add nsw i32 %102, 1
  store i32 %103, i32* %15, align 4
  br label %77

104:                                              ; preds = %77
  ret i32 0
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local i32* @g_checksum_new(i32) #1

declare dso_local i32 @g_checksum_update(i32*, i32*, i32) #1

declare dso_local i32 @g_string_set_size(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @g_checksum_type_get_length(i32) #1

declare dso_local i32 @g_checksum_get_digest(i32*, i32*, i32*) #1

declare dso_local i32 @g_checksum_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
