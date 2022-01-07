; ModuleID = '/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_configuration.c_uri_prefix_length.c'
source_filename = "/home/carl/AnghaBench/citus/src/backend/distributed/connection/extr_connection_configuration.c_uri_prefix_length.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@__const.uri_prefix_length.uri_designator = private unnamed_addr constant [14 x i8] c"postgresql://\00", align 1
@__const.uri_prefix_length.short_uri_designator = private unnamed_addr constant [12 x i8] c"postgres://\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @uri_prefix_length to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @uri_prefix_length(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca [14 x i8], align 1
  %5 = alloca [12 x i8], align 1
  store i8* %0, i8** %3, align 8
  %6 = bitcast [14 x i8]* %4 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %6, i8* align 1 getelementptr inbounds ([14 x i8], [14 x i8]* @__const.uri_prefix_length.uri_designator, i32 0, i32 0), i64 14, i1 false)
  %7 = bitcast [12 x i8]* %5 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 1 %7, i8* align 1 getelementptr inbounds ([12 x i8], [12 x i8]* @__const.uri_prefix_length.short_uri_designator, i32 0, i32 0), i64 12, i1 false)
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds [14 x i8], [14 x i8]* %4, i64 0, i64 0
  %10 = call i64 @strncmp(i8* %8, i8* %9, i32 13)
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %1
  store i32 13, i32* %2, align 4
  br label %20

13:                                               ; preds = %1
  %14 = load i8*, i8** %3, align 8
  %15 = getelementptr inbounds [12 x i8], [12 x i8]* %5, i64 0, i64 0
  %16 = call i64 @strncmp(i8* %14, i8* %15, i32 11)
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %13
  store i32 11, i32* %2, align 4
  br label %20

19:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %20

20:                                               ; preds = %19, %18, %12
  %21 = load i32, i32* %2, align 4
  ret i32 %21
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
