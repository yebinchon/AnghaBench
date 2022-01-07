; ModuleID = '/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_db_delete_entry.c'
source_filename = "/home/carl/AnghaBench/darwin-xnu/bsd/net/extr_content_filter.c_cfil_db_delete_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfil_db = type { %struct.cfil_hash_entry*, i32 }
%struct.cfil_hash_entry = type { i32 }

@cfentry_link = common dso_local global i32 0, align 4
@cfil_hash_entry_zone = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfil_db_delete_entry(%struct.cfil_db* %0, %struct.cfil_hash_entry* %1) #0 {
  %3 = alloca %struct.cfil_db*, align 8
  %4 = alloca %struct.cfil_hash_entry*, align 8
  store %struct.cfil_db* %0, %struct.cfil_db** %3, align 8
  store %struct.cfil_hash_entry* %1, %struct.cfil_hash_entry** %4, align 8
  %5 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %4, align 8
  %6 = icmp eq %struct.cfil_hash_entry* %5, null
  br i1 %6, label %7, label %8

7:                                                ; preds = %2
  br label %27

8:                                                ; preds = %2
  %9 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %4, align 8
  %10 = load i32, i32* @cfentry_link, align 4
  %11 = call i32 @LIST_REMOVE(%struct.cfil_hash_entry* %9, i32 %10)
  %12 = load i32, i32* @cfil_hash_entry_zone, align 4
  %13 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %4, align 8
  %14 = call i32 @zfree(i32 %12, %struct.cfil_hash_entry* %13)
  %15 = load %struct.cfil_db*, %struct.cfil_db** %3, align 8
  %16 = getelementptr inbounds %struct.cfil_db, %struct.cfil_db* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %16, align 8
  %19 = load %struct.cfil_db*, %struct.cfil_db** %3, align 8
  %20 = getelementptr inbounds %struct.cfil_db, %struct.cfil_db* %19, i32 0, i32 0
  %21 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %20, align 8
  %22 = load %struct.cfil_hash_entry*, %struct.cfil_hash_entry** %4, align 8
  %23 = icmp eq %struct.cfil_hash_entry* %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %8
  %25 = load %struct.cfil_db*, %struct.cfil_db** %3, align 8
  %26 = getelementptr inbounds %struct.cfil_db, %struct.cfil_db* %25, i32 0, i32 0
  store %struct.cfil_hash_entry* null, %struct.cfil_hash_entry** %26, align 8
  br label %27

27:                                               ; preds = %7, %24, %8
  ret void
}

declare dso_local i32 @LIST_REMOVE(%struct.cfil_hash_entry*, i32) #1

declare dso_local i32 @zfree(i32, %struct.cfil_hash_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
