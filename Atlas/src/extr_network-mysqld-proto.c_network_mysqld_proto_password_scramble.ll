; ModuleID = '/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_password_scramble.c'
source_filename = "/home/carl/AnghaBench/Atlas/src/extr_network-mysqld-proto.c_network_mysqld_proto_password_scramble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { i32*, i32, i32 }

@G_CHECKSUM_SHA1 = common dso_local global i32 0, align 4
@TRUE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @network_mysqld_proto_password_scramble(%struct.TYPE_7__* %0, i8* %1, i32 %2, i8* %3, i32 %4) #0 {
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.TYPE_7__*, align 8
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store i8* %3, i8** %9, align 8
  store i32 %4, i32* %10, align 4
  %14 = load i8*, i8** %7, align 8
  %15 = icmp ne i8* null, %14
  %16 = zext i1 %15 to i32
  %17 = call i32 @g_return_val_if_fail(i32 %16, i32 -1)
  %18 = load i32, i32* %8, align 4
  %19 = icmp eq i32 20, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @g_return_val_if_fail(i32 %20, i32 -1)
  %22 = load i8*, i8** %9, align 8
  %23 = icmp ne i8* null, %22
  %24 = zext i1 %23 to i32
  %25 = call i32 @g_return_val_if_fail(i32 %24, i32 -1)
  %26 = load i32, i32* %10, align 4
  %27 = icmp eq i32 20, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @g_return_val_if_fail(i32 %28, i32 -1)
  %30 = call %struct.TYPE_7__* @g_string_new(i32* null)
  store %struct.TYPE_7__* %30, %struct.TYPE_7__** %13, align 8
  %31 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %32 = load i8*, i8** %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = call i32 @network_mysqld_proto_password_hash(%struct.TYPE_7__* %31, i8* %32, i32 %33)
  %35 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %36 = call i32* @g_checksum_new(i32 %35)
  store i32* %36, i32** %12, align 8
  %37 = load i32*, i32** %12, align 8
  %38 = load i8*, i8** %7, align 8
  %39 = bitcast i8* %38 to i32*
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @g_checksum_update(i32* %37, i32* %39, i32 %40)
  %42 = load i32*, i32** %12, align 8
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  %45 = load i32*, i32** %44, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %47 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = call i32 @g_checksum_update(i32* %42, i32* %45, i32 %48)
  %50 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %51 = load i32, i32* @G_CHECKSUM_SHA1, align 4
  %52 = call i32 @g_checksum_type_get_length(i32 %51)
  %53 = call i32 @g_string_set_size(%struct.TYPE_7__* %50, i32 %52)
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %58 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %57, i32 0, i32 1
  store i32 %56, i32* %58, align 8
  %59 = load i32*, i32** %12, align 8
  %60 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %61 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 1
  %65 = call i32 @g_checksum_get_digest(i32* %59, i32* %62, i32* %64)
  %66 = load i32*, i32** %12, align 8
  %67 = call i32 @g_checksum_free(i32* %66)
  store i32 0, i32* %11, align 4
  br label %68

68:                                               ; preds = %92, %5
  %69 = load i32, i32* %11, align 4
  %70 = icmp slt i32 %69, 20
  br i1 %70, label %71, label %95

71:                                               ; preds = %68
  %72 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %73 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %11, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i8*, i8** %9, align 8
  %80 = load i32, i32* %11, align 4
  %81 = sext i32 %80 to i64
  %82 = getelementptr inbounds i8, i8* %79, i64 %81
  %83 = load i8, i8* %82, align 1
  %84 = sext i8 %83 to i32
  %85 = xor i32 %78, %84
  %86 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %87 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %86, i32 0, i32 0
  %88 = load i32*, i32** %87, align 8
  %89 = load i32, i32* %11, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds i32, i32* %88, i64 %90
  store i32 %85, i32* %91, align 4
  br label %92

92:                                               ; preds = %71
  %93 = load i32, i32* %11, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %11, align 4
  br label %68

95:                                               ; preds = %68
  %96 = load %struct.TYPE_7__*, %struct.TYPE_7__** %13, align 8
  %97 = load i32, i32* @TRUE, align 4
  %98 = call i32 @g_string_free(%struct.TYPE_7__* %96, i32 %97)
  ret i32 0
}

declare dso_local i32 @g_return_val_if_fail(i32, i32) #1

declare dso_local %struct.TYPE_7__* @g_string_new(i32*) #1

declare dso_local i32 @network_mysqld_proto_password_hash(%struct.TYPE_7__*, i8*, i32) #1

declare dso_local i32* @g_checksum_new(i32) #1

declare dso_local i32 @g_checksum_update(i32*, i32*, i32) #1

declare dso_local i32 @g_string_set_size(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @g_checksum_type_get_length(i32) #1

declare dso_local i32 @g_checksum_get_digest(i32*, i32*, i32*) #1

declare dso_local i32 @g_checksum_free(i32*) #1

declare dso_local i32 @g_string_free(%struct.TYPE_7__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
